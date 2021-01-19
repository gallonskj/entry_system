from django.shortcuts import render
import tools.excelUtils as utils

# Create your views here.
import xlrd
def get(request):
    return render(request,'nbh/test.html')
def test(request):
    utils.read_excel(request.FILES['excel'].read())
    # wb = xlrd.open_workbook(filename=None, file_contents=request.FILES['excel'].read())
    # table = wb.sheets()[0]
    # row = table.nrows
    # for i in range(1, row):
    #     col = table.row_values(i)
    #     print(col)
