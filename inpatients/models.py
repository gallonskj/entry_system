from django.db import models
from patients.models import BPatientBaseInfo
class BInpatientInfo(models.Model):
    id = models.AutoField(primary_key=True)
    patient = models.ForeignKey(BPatientBaseInfo, models.DO_NOTHING)
    in_time = models.IntegerField(blank=True, null=True)
    department = models.CharField(max_length=40, blank=True, null=True)
    inpatient_area = models.CharField(max_length=20, blank=True, null=True)
    bed_number = models.CharField(max_length=20, blank=True, null=True)
    inpatient_number = models.CharField(max_length=20, blank=True, null=True)
    in_date = models.DateField(blank=True, null=True)
    out_date = models.DateField(blank=True, null=True)
    create_time = models.DateTimeField(auto_now_add=True)
    update_time = models.DateTimeField(auto_now=True)

    class Meta:
        managed = False
        db_table = 'b_inpatient_info'

class BInpatientMedicalAdvice(models.Model):
    inpatient = models.ForeignKey('BInpatientInfo', models.DO_NOTHING)
    start_time = models.DateTimeField(blank=True, null=True)
    medical_name = models.CharField(max_length=40, blank=True, null=True)
    dose_num = models.FloatField(blank=True, null=True)
    dose_unit = models.CharField(max_length=10, blank=True, null=True)
    group = models.CharField(max_length=10, blank=True, null=True)
    drug_type = models.CharField(max_length=20, blank=True, null=True)
    type = models.IntegerField(blank=True, null=True)
    usage_way = models.CharField(max_length=20, blank=True, null=True)
    start_doctor = models.CharField(max_length=20, blank=True, null=True)
    start_nurse = models.CharField(max_length=20, blank=True, null=True)
    end_doctor = models.CharField(max_length=20, blank=True, null=True)
    end_nurse = models.CharField(max_length=20, blank=True, null=True)
    end_time = models.DateTimeField(blank=True, null=True)
    create_time = models.DateTimeField(auto_now_add=True)
    update_time = models.DateTimeField(auto_now=True)
    class Meta:
        managed = False
        db_table = 'b_inpatient_medical_advice'
