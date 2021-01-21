from django.shortcuts import render
from django.http import HttpResponse
import tools.excelUtils as utils
import inpatients.dao as inpatients_dao
import inpatients.models as inpatients_model
import tools.config as tools_config
# Create your views here.
import xlrd
def get(request):
    return render(request,'nbh/test.html')
def get_type(drug_type):
    if drug_type in tools_config.drug_types:
        return 0
    else:
        return 1
def upload_medical_advice(request):
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
