# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey has `on_delete` set to the desired behavior.
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class RPatientGad(models.Model):
    patient_session = models.ForeignKey('DPatientDetail', models.DO_NOTHING, unique=True)
    scale = models.ForeignKey('DScales', models.DO_NOTHING)
    question1_answer = models.IntegerField(blank=True, null=True)
    question2_answer = models.IntegerField(blank=True, null=True)
    question3_answer = models.IntegerField(blank=True, null=True)
    question4_answer = models.IntegerField(blank=True, null=True)
    question5_answer = models.IntegerField(blank=True, null=True)
    question6_answer = models.IntegerField(blank=True, null=True)
    question7_answer = models.IntegerField(blank=True, null=True)
    total_score = models.IntegerField(blank=True, null=True)
    doctor = models.ForeignKey('SUser', models.DO_NOTHING)
    create_time = models.DateTimeField()
    update_time = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'r_patient_gad'
