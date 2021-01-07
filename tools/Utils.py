from datetime import date
from datetime import datetime
from patients.models import DPatientDetail


# 计算年龄
def calculate_age(born):
    year = born.split('-')[0]
    month = born.split('-')[1]
    day = born.split('-')[2]
    birth = date(int(year), int(month), int(day))
    today = date.today()
    return today.year - birth.year - ((today.month, today.day) < (birth.month, birth.day))


def calculate_age_by_scandate(born, scan_date):
    born_year = int(born.split('-')[0])
    born_month = int(born.split('-')[1])
    born_day = int(born.split('-')[2])
    scan_year = int(scan_date.split('-')[0])
    scan_month = int(scan_date.split('-')[1])
    scan_day = int(scan_date.split('-')[2])
    return scan_year - born_year - ((scan_month, scan_day) < (born_month, born_day))


# 空值判断
def object_judgment(object_flag):
    if object_flag:
        return None
