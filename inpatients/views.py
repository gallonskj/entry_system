from django.core.files.storage import FileSystemStorage
from django.shortcuts import render,redirect
from django.http import HttpResponse
from django.utils.datastructures import MultiValueDictKeyError
import patients.dao as patient_dao
import tools.excelUtils as utils
import inpatients.dao as inpatients_dao
import inpatients.models as inpatients_model
import tools.config as tools_config
from tools.responseMessage import ErrorMessage,SuccessMessage
from tools.ConfigClass import HospitalizedState,MedicalType
import json
from tools.exception import BussinessException
from django.core.files import File
from tools.doc2pdf import ConvertFileModelField
from tools.Utils import get_progress_note_direct

def get(request):
    return render(request,'nbh/test.html')

# 根据id获取住院患者的详细信息
def get_inpatient_detail(request):
    inpatient_id = request.GET.get('inpatient_id')
    inpatient_detail = inpatients_dao.get_inpatient_detail(inpatient_id)
    return render(request,'nbh/inpatient_detail.html',{'inpatient_detail':inpatient_detail})

# 添加住院患者信息
def add_inpatient_info(request):
    '''
    添加住院病人
    1.基本信息表住院狀態爲在院
    2.添加住院信息表基本信息,需要自動獲取第幾次住院
    Args:
        request:

    Returns:

    '''
    patient_id = request.GET.get("patient_id")
    department = request.POST.get("department")
    inpatient_area = request.POST.get("inpatient_area")
    bed_number = request.POST.get("bed_number")
    in_date = request.POST.get("in_date")
    in_time = check_get_in_time(patient_id)
    inpatient_number = request.POST.get('inpatient_number')
    patient_dao.set_inpatient_type(patient_id,HospitalizedState.INPATIENT)
    binpatient = inpatients_dao.BInpatientInfo(patient_id = patient_id,department = department,
                                               inpatient_area = inpatient_area,bed_number=bed_number,
                                               in_date=in_date,in_time=in_time,inpatient_number = inpatient_number)
    binpatient.save()

    redirect_url = '/inpatients/get_inpatient_detail?inpatient_id={}'.format(str(binpatient.id))
    return redirect(redirect_url)

# 住院患者设置为出院状态
def out_inpatient(request):
    '''
    病人設置爲出院状态
    1.病人基本信息表设置为出院状态
    2.更新住院患者表字段
    3.读取该病人的长期医嘱单,将所有停止时间设置为当前时间(todo)
    Args:
        request:

    Returns:

    '''
    inpatient_id = request.GET.get('inpatient_id')
    out_date = request.POST.get('out_date')
    inpatient = inpatients_dao.get_inpatient_info_byPK(inpatient_id)
    if inpatient is None:
        res_message = ErrorMessage('病人不存在')
    else:
        patient = patient_dao.get_base_info_byPK(inpatient.patient_id)
        patient.inpatient_state = HospitalizedState.OUT_HOSPITAL
        patient_dao.add_base_info(patient)
        inpatient.out_date = out_date
        inpatient.save()
        res_message = SuccessMessage('修改成功')
    return HttpResponse(json.dumps(res_message.__dict__))

# 上传长期医嘱单信息
def upload_medical_advice(request):
    '''
    1.校验格式
    2.文件备份存储到服务器
    3.excel数据存储到数据库
        3.1删除旧的数据记录
        3.2读取excel表格
        3.3数据存储到数据库
    Args:
        request:

    Returns:

    '''
    bInpatientMedicalAdvice_list = []
    medical_advice_dict = inpatients_dao.get_medical_dict()
    inpatient_id = request.POST.get('inpatient_id')
    # todo
    inpatient_id = 5
    try:
        excel = request.FILES['medical_advice']
        if excel.name.split('.')[-1] in ['xls','xlsx']:
            # 文件备份到服务器
            inpatient = inpatients_dao.get_inpatient_info_byPK(inpatient_id)
            inpatient.medical_advice_path.delete()
            inpatient.medical_advice_path = excel
            inpatient.save()
            # read完之后会指向文件末尾,需要seek(0)移动指针
            excel.seek(0)
            excel_object_list = utils.read_excel(excel.read())
            # 根据inpatient_id删除旧的记录
            inpatients_dao.del_medical_advice_by_inpatientid(inpatient_id)
            # 读取excel表格信息转化成数据库对象入库
            for excel_object in excel_object_list:
                # 计算属于哪一个大类
                type = get_type(excel_object,medical_advice_dict)
                bInpatientMedicalAdvice = inpatients_model.BInpatientMedicalAdvice(start_time=excel_object.start_time,
                                                                                   medical_name=excel_object.medical_name,
                                                                                   inpatient_id=inpatient_id,
                                                                                   dose_num=excel_object.dose_num,dose_unit=excel_object.dose_unit,
                                                                                   drug_type=excel_object.drug_type,type = type,group=excel_object.group_flag,
                                                                                   start_doctor=excel_object.start_doctor,start_nurse=excel_object.start_nurse,
                                                                                   end_doctor=excel_object.end_doctor,end_nurse=excel_object.end_nurse,
                                                                                   end_time=excel_object.end_time,usage_way=excel_object.usage_way)
                bInpatientMedicalAdvice_list.append(bInpatientMedicalAdvice)
            inpatients_model.BInpatientMedicalAdvice.objects.bulk_create(bInpatientMedicalAdvice_list)
            res_message = SuccessMessage('上传成功')
        else:
            res_message = ErrorMessage('上传文件必须为excel格式,请检验')
    except BussinessException as e:
        res_message = ErrorMessage(e.message)
    except MultiValueDictKeyError as e:
        res_message = ErrorMessage('文件不存在,请重新上传')
    return HttpResponse(json.dumps(res_message.__dict__))
# 上传出院信息文件
def upload_out_record(request):
    '''
    上传出院记录pdf文件
    1.删除旧记录
    2.插入新纪录
    '''
    if request.method == 'POST':
        inpatient_id = request.POST.get('inpatient_id')
        out_record = request.FILES['out_record']
        inpatient = inpatients_dao.get_inpatient_info_byPK(inpatient_id)
        if not inpatient:
            res_message = ErrorMessage('该住院患者不存在,请确认')
        else:
            inpatient.out_record.delete()
            inst = ConvertFileModelField(out_record,download=False)
            out_record = inst.get_content()
            inpatient.out_record = File(open(out_record.get('path'), 'rb'))
            inpatient.out_record.name = out_record.get('name')
            inpatient.save()
            res_message = SuccessMessage('上传成功')
    return HttpResponse(json.dumps(res_message.__dict__))

def upload_progress_note(request):
    '''
    将病程记录转化为pdf,上传到服务器,
    1.删除旧记录
    2.转化为pdf文件
    3.存储文件,更新数据库
    '''
    if request.method == 'POST':
        inpatient_id = request.POST.get('inpatient_id')
        progress_note = request.FILES['progress_note']
        inpatient = inpatients_dao.get_inpatient_info_byPK(inpatient_id)
        if not inpatient:
            res_message = ErrorMessage('该住院患者不存在,请确认')
        else:
            # 1.删除旧记录
            inpatient.progress_note.delete()
            # 2.转成pdf文件
            inst = ConvertFileModelField(progress_note)
            progress_note_pdf = inst.get_content()
            inpatient.progress_note = File(open(progress_note_pdf.get('path'), 'rb'))
            # 3.存储文件,入库
            inpatient.progress_note.name = progress_note_pdf.get('name')
            inpatient.save()
            # 4.存储word文件作为备份
            progress_note.seek(0)
            save_path = get_progress_note_direct(inpatient,progress_note.name)
            fs = FileSystemStorage()
            file_path = fs.save(save_path, progress_note)
            # 返回message
            res_message = SuccessMessage('上传成功')
    return HttpResponse(json.dumps(res_message.__dict__))

# 获取所有住院病人信息
def get_all_inpatient_info(request):
    res = inpatients_dao.get_all_inpatient_info()
    return render(request,'inpatients_info.html',{'inpatients':res})

# 读取用药信息
def read_medical_advice(request):
    inpatient_id = request.GET.get('inpatient_id')
    medical_advices = inpatients_dao.get_mecical_advice(inpatient_id)
    return render(request,'medical_advice_detail.html',{'medical_advices':medical_advices,'inpatient_id':inpatient_id})

# 删除住院患者信息
def del_inpatient(request):
    inpatient_id = request.GET.get('inpatient_id')
    inpatients_dao.del_inpatient_by_pk(inpatient_id)
    return redirect('/inpatients/get_all_inpatient_info')


# 获取大类信息
# def get_type(object,medical_dict):
#     if object.drug_type in tools_config.drug_types:
#         return 0
#     else:
#         try:
#             type = medical_dict[object.medical_name]
#         except KeyError:
#             raise BussinessException('{} 在数据库不存在,请联系管理员'.format(object.medical_name))
#         return type
def get_type(object,medical_dict):
    list = []
    if object.drug_type in tools_config.drug_types:
        return 0
    else:
        if object.medical_name in medical_dict.keys():
            type = medical_dict[object.medical_name]
        else:
            type = MedicalType.OTHER
            dmedicaladvice = inpatients_model.DMedicalAdvice(medical_name=object.medical_name,type=type)
            list.append(dmedicaladvice)
        inpatients_model.DMedicalAdvice.objects.bulk_create(list)
        return type

# 获取第几次入院的信息
def check_get_in_time(patient_id):
    patient = patient_dao.get_base_info_byPK(patient_id)
    if patient is None:
        return -1
    in_time = inpatients_dao.get_in_time_by_patientid(patient_id)
    return in_time

# 插入medical字典表,初始化字典表的时候使用
def insert_medical_dict(request):
    from tools.Utils import insert_medical_dict
    insert_medical_dict()
# def upload_out_record(request):
#     if request.method == 'POST':
#         inpatient_id = 1
#         out_record = request.FILES['out_record']
#         if out_record.name.split('.')[-1] in ['pdf']:
#             save_path = '{}/{}/{}.pdf'.format(settings.INPATIENT_FILE_PATH,str(inpatient_id),'出院记录')
#             # 服务器上保存图片的路径
#             fs = FileSystemStorage()
#             file_path = fs.save(save_path, out_record)
#             fs.url(file_path)
#             message =''
#             status = 1
#         else:
#             message = '请上传正确的pdf格式文件'
#             status = -1
#         return JsonResponse({'status': status, 'message': message})