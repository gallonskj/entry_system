from inpatients.models import BInpatientInfo,BInpatientMedicalAdvice
# 根据inpatient_id获取对象
def get_inpatient_info_byPK(inpatient_id):
    res = BInpatientInfo.objects.filter(pk = inpatient_id)
    if res.exists():
        return res[0]
    return None
def del_medical_advice_by_inpatientid(inpatient_id):
    res = BInpatientMedicalAdvice.objects.filter(inpatient_id = inpatient_id)
    if res.exists():
        res.delete()

def add_medical_advice(bInpatientMedicalAdvice):
    bInpatientMedicalAdvice.save()
    return bInpatientMedicalAdvice.id

def get_in_time_by_patientid(patient_id):
    res = BInpatientInfo.objects.filter(patient_id = patient_id).order_by('in_time').values('in_time')
    if not res.exists():
        return 1
    else:
        return res[0]
# 根据inpatient_id获取所有医嘱信息
def get_mecical_advice(inpatient_id):
    res = BInpatientMedicalAdvice.objects.filter(pk = inpatient_id)
    return res