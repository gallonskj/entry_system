from datetime import date
from patients.models import DPatientDetail


# 计算年龄
def calculate_age(born):
    year = born.split('-')[0]
    month = born.split('-')[1]
    day = born.split('-')[2]
    birth = date(int(year), int(month), int(day))
    today = date.today()
    return today.year - birth.year - ((today.month, today.day) < (birth.month, birth.day))


# 空值判断
def object_judgment(object_flag):
    if object_flag:
        return None
