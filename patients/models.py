# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey has `on_delete` set to the desired behavior.
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class BPatientBaseInfo(models.Model):
    SEX_TYPE = (
        (0, '男'),
        (1, '女'),
    )
    DIAGNOSIS_TYPE = (
        (0, '未诊断'),
        (1, '健康'),
        (2, '重症抑郁障碍'),
        (3, '焦虑障碍'),
        (4, '双相障碍'),
        (5, '精神分裂症'),
        (6, '强迫症'),
        (7, '高危遗传'),
        (8, '临床高危'),
        (9, '抑郁症状'),
        (99, '其他诊断')

    )
    id = models.IntegerField(primary_key=True)
    name = models.CharField(max_length=20)
    sex = models.IntegerField(blank=True, null=True, choices=SEX_TYPE)
    birth_date = models.DateField()
    nation = models.CharField(max_length=10)
    doctor = models.ForeignKey('users.SUser', models.DO_NOTHING)
    create_time = models.DateTimeField(auto_now_add=True)
    update_time = models.DateTimeField(auto_now=True)
    diagnosis = models.IntegerField(blank=True, null=True, choices=DIAGNOSIS_TYPE)
    other_diagnosis = models.CharField(max_length=45)
    inpatient_state = models.IntegerField()
    class Meta:
        managed = False
        db_table = 'b_patient_base_info'


class DPatientDetail(models.Model):
    patient = models.ForeignKey(BPatientBaseInfo, models.DO_NOTHING, blank=True, null=True)
    session_id = models.IntegerField(blank=True, null=True)
    standard_id = models.CharField(max_length=20, blank=True, null=True)
    cognitive = models.IntegerField(blank=True, null=True)
    sound = models.IntegerField(blank=True, null=True)
    blood = models.IntegerField(blank=True, null=True)
    hairs = models.IntegerField(blank=True, null=True)
    manure = models.IntegerField(blank=True, null=True)
    drugs_information = models.IntegerField(blank=True, null=True)
    mri_examination = models.IntegerField(blank=True, null=True)
    tms = models.IntegerField(blank=True, null=True)
    age = models.IntegerField(blank=True, null=True)
    occupation = models.CharField(max_length=40, blank=True, null=True)
    education = models.CharField(max_length=20, blank=True, null=True)
    years = models.IntegerField(blank=True, null=True)
    emotional_state = models.IntegerField(blank=True, null=True)
    phone = models.CharField(max_length=20, blank=True, null=True)
    source = models.IntegerField(blank=True, null=True)
    height = models.FloatField(blank=True, null=True)
    weight = models.FloatField(blank=True, null=True)
    waist = models.FloatField(blank=True, null=True)
    hip = models.FloatField(blank=True, null=True)
    handy = models.IntegerField(blank=True, null=True)
    note = models.TextField(blank=True, null=True)
    doctor = models.ForeignKey('users.SUser', models.DO_NOTHING)
    create_time = models.DateTimeField(auto_now_add=True)
    update_time = models.DateTimeField(auto_now=True)
    disease_state =  models.CharField(max_length=30, blank=True, null=True)
    first = models.IntegerField(blank=True, null=True)
    contact_way = models.IntegerField(blank=True, null=True)
    contact_info = models.CharField(max_length=45, blank=True, null=True)
    scan_date = models.DateField()

    class Meta:
        managed = False
        db_table = 'd_patient_detail'


# 民族字典表
class DEthnicity(models.Model):
    ethnicity_name = models.CharField(max_length=20)

    class Meta:
        managed = False
        db_table = 'd_ethnicity'


class DPatientAppointment(models.Model):
    date = models.DateTimeField()
    name = models.CharField(max_length=20)
    sex = models.IntegerField()
    birth_date = models.DateField()
    phone = models.CharField(max_length=20)
    note = models.TextField(blank=True, null=True)
    pre_diagnosis = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'd_patient_appointment'