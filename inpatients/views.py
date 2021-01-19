from django.shortcuts import render
import tools.excelUtils as utils
import inpatients.dao as inpatients_dao
# Create your views here.
import xlrd
def get(request):
    return render(request,'nbh/test.html')
def test(request):
    excel_object_list = utils.read_excel(request.FILES['excel'].read())
    inpatient_id = request.GET.get('inpatient_id')
    # 根据inpatient_id删除旧的记录
    # 读取excel表格信息转化成数据库对象入库
    for excel_object in excel_object_list:

