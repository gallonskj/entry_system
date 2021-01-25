from django.shortcuts import render,redirect
from django.http import HttpResponse,JsonResponse
from django.views.decorators.csrf import csrf_exempt
import patients.dao as patient_dao
import tools.excelUtils as utils
import inpatients.dao as inpatients_dao
import inpatients.models as inpatients_model
import tools.config as tools_config
from tools.responseMessage import ErrorMessage,SuccessMessage
from django.core.files.storage import FileSystemStorage
import json
def get(request):
    return render(request,'nbh/test.html')

@csrf_exempt
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
    patient_dao.set_inpatient_type(patient_id,1)
    binpatient = inpatients_dao.BInpatientInfo(patient_id = patient_id,department = department,
                                  inpatient_area = inpatient_area,bed_number=bed_number,
                                  in_date=in_date,in_time=in_time,inpatient_number = inpatient_number)
    binpatient.save()
    return render(request,'nbh/test.html')
@csrf_exempt
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
        patient.inpatient_state = 2
        patient_dao.add_base_info(patient)
        inpatient.out_date = out_date
@csrf_exempt
def upload_medical_advice(request):
    '''
    Args:
        request:

    Returns:

    '''
    bInpatientMedicalAdvice_list = []
    excel_object_list = utils.read_excel(request.FILES['excel'].read())
    inpatient_id = request.GET.get('inpatient_id')
    inpatient_id = 1
    # 根据inpatient_id删除旧的记录
    inpatients_dao.del_medical_advice_by_inpatientid(inpatient_id)
    # 读取excel表格信息转化成数据库对象入库
    for excel_object in excel_object_list:
        # 计算属于哪一个大类
        type = get_type(excel_object.drug_type)
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
    return HttpResponse('ok')

@csrf_exempt
def upload_out_record(request):
    '''
    上传出院记录pdf文件
    1.删除旧记录
    2.插入新纪录
    '''
    if request.method == 'POST':
        inpatient_id = request.POST.get('inpatient_id')
        out_record = request.FILES['out_record']
        if out_record.name.split('.')[-1] in ['pdf']:
            inpatient = inpatients_dao.get_inpatient_info_byPK(inpatient_id)
            if not inpatient:
                res_message = ErrorMessage('该住院患者不存在,请确认')
            else:
                inpatient.out_record.delete()
                inpatient.out_record = out_record
                inpatient.save()
                res_message = SuccessMessage('上传成功')
        else:
            res_message = ErrorMessage('文件格式错误,请上传正确的pdf格式文件')
    print(res_message.message)
    return HttpResponse(json.dumps(res_message.__dict__))

@csrf_exempt
def upload_progress_note(request):
    '''
    将病程记录上传到服务器
    1.删除旧记录
    2.插入新纪录
    '''
    if request.method == 'POST':
        inpatient_id = 1
        progress_note = request.FILES['progress_note']
        if progress_note.name.split('.')[-1] in ['pdf']:
            inpatient = inpatients_dao.get_inpatient_info_byPK(inpatient_id)
            if not inpatient:
                res_message = ErrorMessage('该住院患者不存在,请确认')
            else:
                inpatient.progress_note.delete()
                inpatient.out_record = progress_note
                inpatient.save()
                message = SuccessMessage('上传成功')
        else:
            res_message = ErrorMessage('文件格式错误,请上传正确的pdf格式文件')
    return HttpResponse(json.dumps(res_message.__dict__))
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
def read_medical_advice(request):
    inpatient_id = request.GET.get('inpatient_id')
    medical_advices = inpatients_dao.get_mecical_advice(inpatient_id)
    return render(request,'medical_advice_detail.html',{'medical_advices':medical_advices,
                                                        'inpatient_id':inpatient_id})

def get_out_record(request):
    inpatient_id = request.GET.get('inpatient_id')
    inpatient = inpatients_model.BInpatientInfo.objects.filter(pk = inpatient_id)
    url = inpatient.out_record.url
    return redirect(url)
def get_type(drug_type):
    if drug_type in tools_config.drug_types:
        return 0
    else:
        return 1

def check_get_in_time(patient_id):
    patient = patient_dao.get_base_info_byPK(patient_id)
    if patient is None:
        return -1
    inpatients_dao.get_in_time_by_patientid(patient_id)
