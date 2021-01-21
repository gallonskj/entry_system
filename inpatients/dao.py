from inpatients.models import BInpatientInfo,BInpatientMedicalAdvice
def del_medical_advice_by_inpatientid(inpatient_id):
    res = BInpatientMedicalAdvice.objects.filter(inpatient_id = inpatient_id)
    if res.exists():
        res.delete()

def add_medical_advice(bInpatientMedicalAdvice):
    bInpatientMedicalAdvice.save()
    return bInpatientMedicalAdvice.id