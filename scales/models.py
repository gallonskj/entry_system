# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey has `on_delete` set to the desired behavior.
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models
from patients.models import DPatientDetail, BPatientBaseInfo


class DScales(models.Model):
    scale_name = models.CharField(max_length=40)
    scale_type = models.IntegerField()
    do_scale_type = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'd_scales'


class DTreatments(models.Model):
    name = models.CharField(max_length=20, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'd_treatments'


class RPatientAdolescentEvents(models.Model):
    patient_session = models.ForeignKey(DPatientDetail, models.DO_NOTHING)
    scale = models.ForeignKey(DScales, models.DO_NOTHING)
    question1_answer = models.IntegerField(blank=True, null=True)
    question2_answer = models.IntegerField(blank=True, null=True)
    question3_answer = models.IntegerField(blank=True, null=True)
    question4_answer = models.IntegerField(blank=True, null=True)
    question5_answer = models.IntegerField(blank=True, null=True)
    question6_answer = models.IntegerField(blank=True, null=True)
    question7_answer = models.IntegerField(blank=True, null=True)
    question8_answer = models.IntegerField(blank=True, null=True)
    question9_answer = models.IntegerField(blank=True, null=True)
    question10_answer = models.IntegerField(blank=True, null=True)
    question11_answer = models.IntegerField(blank=True, null=True)
    question12_answer = models.IntegerField(blank=True, null=True)
    question13_answer = models.IntegerField(blank=True, null=True)
    question14_answer = models.IntegerField(blank=True, null=True)
    question15_answer = models.IntegerField(blank=True, null=True)
    question16_answer = models.IntegerField(blank=True, null=True)
    question17_answer = models.IntegerField(blank=True, null=True)
    question18_answer = models.IntegerField(blank=True, null=True)
    question19_answer = models.IntegerField(blank=True, null=True)
    question20_answer = models.IntegerField(blank=True, null=True)
    question21_answer = models.IntegerField(blank=True, null=True)
    question22_answer = models.IntegerField(blank=True, null=True)
    question23_answer = models.IntegerField(blank=True, null=True)
    question24_answer = models.IntegerField(blank=True, null=True)
    question25_answer = models.IntegerField(blank=True, null=True)
    question26_answer = models.IntegerField(blank=True, null=True)
    question27_answer = models.IntegerField(blank=True, null=True)
    total_score = models.IntegerField(blank=True, null=True)
    doctor = models.ForeignKey('users.Suser', models.DO_NOTHING)
    create_time = models.DateTimeField(auto_now_add=True)
    update_time = models.DateTimeField(auto_now=True)

    class Meta:
        managed = False
        db_table = 'r_patient_adolescent_events'


class RPatientAtq(models.Model):
    patient_session = models.ForeignKey(DPatientDetail, models.DO_NOTHING)
    scale = models.ForeignKey(DScales, models.DO_NOTHING)
    question1_answer = models.IntegerField(blank=True, null=True)
    question2_answer = models.IntegerField(blank=True, null=True)
    question3_answer = models.IntegerField(blank=True, null=True)
    question4_answer = models.IntegerField(blank=True, null=True)
    question5_answer = models.IntegerField(blank=True, null=True)
    question6_answer = models.IntegerField(blank=True, null=True)
    question7_answer = models.IntegerField(blank=True, null=True)
    question8_answer = models.IntegerField(blank=True, null=True)
    question9_answer = models.IntegerField(blank=True, null=True)
    question10_answer = models.IntegerField(blank=True, null=True)
    question11_answer = models.IntegerField(blank=True, null=True)
    question12_answer = models.IntegerField(blank=True, null=True)
    question13_answer = models.IntegerField(blank=True, null=True)
    question14_answer = models.IntegerField(blank=True, null=True)
    question15_answer = models.IntegerField(blank=True, null=True)
    question16_answer = models.IntegerField(blank=True, null=True)
    question17_answer = models.IntegerField(blank=True, null=True)
    question18_answer = models.IntegerField(blank=True, null=True)
    question19_answer = models.IntegerField(blank=True, null=True)
    question20_answer = models.IntegerField(blank=True, null=True)
    question21_answer = models.IntegerField(blank=True, null=True)
    question22_answer = models.IntegerField(blank=True, null=True)
    question23_answer = models.IntegerField(blank=True, null=True)
    question24_answer = models.IntegerField(blank=True, null=True)
    question25_answer = models.IntegerField(blank=True, null=True)
    question26_answer = models.IntegerField(blank=True, null=True)
    question27_answer = models.IntegerField(blank=True, null=True)
    question28_answer = models.IntegerField(blank=True, null=True)
    question29_answer = models.IntegerField(blank=True, null=True)
    question30_answer = models.IntegerField(blank=True, null=True)
    total_score = models.IntegerField(blank=True, null=True)
    doctor = models.ForeignKey('users.Suser', models.DO_NOTHING)
    create_time = models.DateTimeField(auto_now_add=True)
    update_time = models.DateTimeField(auto_now=True)

    class Meta:
        managed = False
        db_table = 'r_patient_atq'


class RPatientBasicInformationAbuse(models.Model):
    patient_session = models.ForeignKey(DPatientDetail, models.DO_NOTHING)
    scale = models.ForeignKey(DScales, models.DO_NOTHING)
    patient_smoke = models.IntegerField(blank=True, null=True)
    patient_smoke_age = models.IntegerField(blank=True, null=True)
    patient_daily_smoke_num = models.IntegerField(blank=True, null=True)
    patient_stop_smoke_age = models.IntegerField(blank=True, null=True)
    patient_alcohol = models.IntegerField(blank=True, null=True)
    patient_alcohol_age = models.IntegerField(blank=True, null=True)
    patient_other_abuse = models.IntegerField(blank=True, null=True)
    patient_other_abuse_age = models.IntegerField(blank=True, null=True)
    doctor = models.ForeignKey('users.Suser', models.DO_NOTHING)
    create_time = models.DateTimeField(auto_now_add=True)
    update_time = models.DateTimeField(auto_now=True)

    class Meta:
        managed = False
        db_table = 'r_patient_basic_information_abuse'


class RPatientBasicInformationFamily(models.Model):
    patient_session = models.ForeignKey(DPatientDetail, models.DO_NOTHING)
    scale = models.ForeignKey(DScales, models.DO_NOTHING)
    patient_urban_rural = models.IntegerField(blank=True, null=True)
    patient_address = models.CharField(max_length=300, blank=True, null=True)
    patient_live_type = models.IntegerField(blank=True, null=True)
    patient_live_type_other = models.CharField(max_length=50, blank=True, null=True)
    patient_only_child = models.IntegerField(blank=True, null=True)
    patient_older_brother_num = models.IntegerField(blank=True, null=True)
    patient_older_sister_num = models.IntegerField(blank=True, null=True)
    patient_younger_brother_num = models.IntegerField(blank=True, null=True)
    pathent_younger_sister_num = models.IntegerField(blank=True, null=True)
    parents_favour = models.IntegerField(blank=True, null=True)
    father_occupation = models.CharField(max_length=30, blank=True, null=True)
    mother_occupation = models.CharField(max_length=30, blank=True, null=True)
    father_tele = models.CharField(max_length=20, blank=True, null=True)
    mother_tele = models.CharField(max_length=20, blank=True, null=True)
    father_education = models.IntegerField(blank=True, null=True)
    mother_education = models.IntegerField(blank=True, null=True)
    parent_marry = models.IntegerField(blank=True, null=True)
    patient_parent_death = models.IntegerField(blank=True, null=True)
    patient_parent_death_age = models.IntegerField(blank=True, null=True)
    parent_argument = models.IntegerField(blank=True, null=True)
    patient_adopt = models.IntegerField(blank=True, null=True)
    patient_adopt_age = models.IntegerField(blank=True, null=True)
    father_relationship = models.IntegerField(blank=True, null=True)
    mother_relationship = models.IntegerField(blank=True, null=True)
    doctor = models.ForeignKey('users.Suser', models.DO_NOTHING)
    create_time = models.DateTimeField(auto_now_add=True)
    update_time = models.DateTimeField(auto_now=True)

    class Meta:
        managed = False
        db_table = 'r_patient_basic_information_family'


class RPatientBasicInformationOther(models.Model):
    patient_session = models.ForeignKey(DPatientDetail, models.DO_NOTHING)
    scale = models.ForeignKey(DScales, models.DO_NOTHING)
    patient_friend_num = models.IntegerField(blank=True, null=True)
    patient_big_event = models.IntegerField(blank=True, null=True)
    patient_big_event_describtion = models.TextField(blank=True, null=True)
    doctor = models.ForeignKey('users.Suser', models.DO_NOTHING)
    create_time = models.DateTimeField(auto_now_add=True)
    update_time = models.DateTimeField(auto_now=True)

    class Meta:
        managed = False
        db_table = 'r_patient_basic_information_other'


class RPatientBasicInformationStudy(models.Model):
    patient_session = models.ForeignKey(DPatientDetail, models.DO_NOTHING)
    scale = models.ForeignKey(DScales, models.DO_NOTHING)
    patient_current_achievement = models.IntegerField(blank=True, null=True)
    patient_last_semester_achievement_difference = models.IntegerField(blank=True, null=True)
    patient_mood_symptom_achievement_difference = models.IntegerField(blank=True, null=True)
    patient_leader = models.IntegerField(blank=True, null=True)
    patient_leader_occupation = models.CharField(max_length=30, blank=True, null=True)
    patient_live_school = models.IntegerField(blank=True, null=True)
    patient_home_frequency = models.IntegerField(blank=True, null=True)
    doctor = models.ForeignKey('users.Suser', models.DO_NOTHING)
    create_time = models.DateTimeField(auto_now_add=True)
    update_time = models.DateTimeField(auto_now=True)

    class Meta:
        managed = False
        db_table = 'r_patient_basic_information_study'


class RPatientBasicInformationHealth(models.Model):
    patient_session = models.ForeignKey(DPatientDetail, models.DO_NOTHING)
    scale = models.ForeignKey(DScales, models.DO_NOTHING)
    patient_somatic_diseases = models.IntegerField(blank=True, null=True)
    patient_somatic_diseases_name = models.CharField(max_length=100, blank=True, null=True)
    patient_somatic_diseases_year = models.CharField(max_length=20, blank=True, null=True)
    patient_mental_diseases = models.IntegerField(blank=True, null=True)
    patient_mental_diseases_name = models.CharField(max_length=100, blank=True, null=True)
    patient_mental_diseases_year = models.CharField(max_length=20, blank=True, null=True)
    patient_family_diseases_history = models.IntegerField(blank=True, null=True)
    patient_family_diseases_name = models.CharField(max_length=100, blank=True, null=True)
    patient_medicine_information = models.TextField()
    patient_treatment_information = models.TextField()
    doctor = models.ForeignKey('users.Suser', models.DO_NOTHING)
    create_time = models.DateTimeField(auto_now_add=True)
    update_time = models.DateTimeField(auto_now=True)

    class Meta:
        managed = False
        db_table = 'r_patient_basic_information_health'


class RPatientBprs(models.Model):
    patient_session = models.ForeignKey(DPatientDetail, models.DO_NOTHING)
    scale = models.ForeignKey(DScales, models.DO_NOTHING, blank=True, null=True)
    health_care = models.IntegerField(blank=True, null=True)
    anxious = models.IntegerField(blank=True, null=True)
    emocommunicat_barrier = models.IntegerField(blank=True, null=True)
    conceptual_disorder = models.IntegerField(blank=True, null=True)
    guilt_concept = models.IntegerField(blank=True, null=True)
    nervous = models.IntegerField(blank=True, null=True)
    look_act = models.IntegerField(blank=True, null=True)
    exaggerate = models.IntegerField(blank=True, null=True)
    mood_depression = models.IntegerField(blank=True, null=True)
    hostility = models.IntegerField(blank=True, null=True)
    suspicion = models.IntegerField(blank=True, null=True)
    hallucination = models.IntegerField(blank=True, null=True)
    slow_movement = models.IntegerField(blank=True, null=True)
    no_cooperation = models.IntegerField(blank=True, null=True)
    unusual_thinking = models.IntegerField(blank=True, null=True)
    feeling_flat = models.IntegerField(blank=True, null=True)
    excitement = models.IntegerField(blank=True, null=True)
    directional_disorder = models.IntegerField(blank=True, null=True)
    total_score = models.IntegerField(blank=True, null=True)
    doctor = models.ForeignKey('users.Suser', models.DO_NOTHING, blank=True, null=True)
    create_time = models.DateTimeField(auto_now_add=True)
    update_time = models.DateTimeField(auto_now=True)

    class Meta:
        managed = False
        db_table = 'r_patient_bprs'


class RPatientChineseHandy(models.Model):
    patient_session = models.ForeignKey(DPatientDetail, models.DO_NOTHING)
    scale = models.ForeignKey(DScales, models.DO_NOTHING)
    hold_pen = models.IntegerField(blank=True, null=True)
    hold_chopsticks = models.IntegerField(blank=True, null=True)
    throw_things = models.IntegerField(blank=True, null=True)
    brush_tooth = models.IntegerField(blank=True, null=True)
    use_scissors = models.IntegerField(blank=True, null=True)
    use_match = models.IntegerField(blank=True, null=True)
    use_needle = models.IntegerField(blank=True, null=True)
    hold_hammer = models.IntegerField(blank=True, null=True)
    hold_racket = models.IntegerField(blank=True, null=True)
    wash_face = models.IntegerField(blank=True, null=True)
    result = models.IntegerField(blank=True, null=True)
    doctor = models.ForeignKey('users.Suser', models.DO_NOTHING)
    create_time = models.DateTimeField(auto_now_add=True)
    update_time = models.DateTimeField(auto_now=True)

    class Meta:
        managed = False
        db_table = 'r_patient_chinese_handy'


class RPatientCognitiveEmotion(models.Model):
    patient_session = models.ForeignKey(DPatientDetail, models.DO_NOTHING)
    scale = models.ForeignKey(DScales, models.DO_NOTHING)
    question1_answer = models.IntegerField(blank=True, null=True)
    question2_answer = models.IntegerField(blank=True, null=True)
    question3_answer = models.IntegerField(blank=True, null=True)
    question4_answer = models.IntegerField(blank=True, null=True)
    question5_answer = models.IntegerField(blank=True, null=True)
    question6_answer = models.IntegerField(blank=True, null=True)
    question7_answer = models.IntegerField(blank=True, null=True)
    question8_answer = models.IntegerField(blank=True, null=True)
    question9_answer = models.IntegerField(blank=True, null=True)
    question10_answer = models.IntegerField(blank=True, null=True)
    question11_answer = models.IntegerField(blank=True, null=True)
    question12_answer = models.IntegerField(blank=True, null=True)
    question13_answer = models.IntegerField(blank=True, null=True)
    question14_answer = models.IntegerField(blank=True, null=True)
    question15_answer = models.IntegerField(blank=True, null=True)
    question16_answer = models.IntegerField(blank=True, null=True)
    question17_answer = models.IntegerField(blank=True, null=True)
    question18_answer = models.IntegerField(blank=True, null=True)
    question19_answer = models.IntegerField(blank=True, null=True)
    question20_answer = models.IntegerField(blank=True, null=True)
    question21_answer = models.IntegerField(blank=True, null=True)
    question22_answer = models.IntegerField(blank=True, null=True)
    question23_answer = models.IntegerField(blank=True, null=True)
    question24_answer = models.IntegerField(blank=True, null=True)
    question25_answer = models.IntegerField(blank=True, null=True)
    question26_answer = models.IntegerField(blank=True, null=True)
    question27_answer = models.IntegerField(blank=True, null=True)
    question28_answer = models.IntegerField(blank=True, null=True)
    question29_answer = models.IntegerField(blank=True, null=True)
    question30_answer = models.IntegerField(blank=True, null=True)
    question31_answer = models.IntegerField(blank=True, null=True)
    question32_answer = models.IntegerField(blank=True, null=True)
    question33_answer = models.IntegerField(blank=True, null=True)
    question34_answer = models.IntegerField(blank=True, null=True)
    question35_answer = models.IntegerField(blank=True, null=True)
    question36_answer = models.IntegerField(blank=True, null=True)
    total_score = models.IntegerField(blank=True, null=True)
    blame_self = models.IntegerField(blank=True, null=True)
    blame_others = models.IntegerField(blank=True, null=True)
    meditation = models.IntegerField(blank=True, null=True)
    catastrophization = models.IntegerField(blank=True, null=True)
    accepted = models.IntegerField(blank=True, null=True)
    positive_refocus = models.IntegerField(blank=True, null=True)
    program_refocus = models.IntegerField(blank=True, null=True)
    positive_evaluation = models.IntegerField(blank=True, null=True)
    rational_analysis = models.IntegerField(blank=True, null=True)
    doctor = models.ForeignKey('users.Suser', models.DO_NOTHING)
    create_time = models.DateTimeField(auto_now_add=True)
    update_time = models.DateTimeField(auto_now=True)

    class Meta:
        managed = False
        db_table = 'r_patient_cognitive_emotion'


class RPatientDiagnosticType(models.Model):
    patient_session_id = models.IntegerField()
    scale_id = models.IntegerField(blank=True, null=True)
    diagnostic_type = models.IntegerField(blank=True, null=True)
    diagnostic_type_other = models.CharField(max_length=20, blank=True, null=True)
    diagnostic_doctor1_signature = models.TextField(blank=True, null=True)
    diagnostic_doctor1_date = models.DateField(blank=True, null=True)
    diagnostic_doctor2_signature = models.TextField(blank=True, null=True)
    diagnostic_doctor2_date = models.DateField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'r_patient_diagnostic_type'


class RPatientDrugsInformation(models.Model):
    patient_session = models.ForeignKey(DPatientDetail, models.DO_NOTHING)
    scale = models.ForeignKey(DScales, models.DO_NOTHING)
    type = models.IntegerField(blank=True, null=True)
    drug_name = models.CharField(max_length=40, blank=True, null=True)
    drug_general_name = models.CharField(max_length=40, blank=True, null=True)
    drug_type = models.CharField(max_length=40, blank=True, null=True)
    dosage = models.CharField(max_length=50, blank=True, null=True)
    begin_time = models.DateField(blank=True, null=True)
    end_time = models.DateField(blank=True, null=True)
    note = models.TextField(blank=True, null=True)
    doctor = models.ForeignKey('users.Suser', models.DO_NOTHING)
    create_time = models.DateTimeField(auto_now_add=True)
    update_time = models.DateTimeField(auto_now=True)

    class Meta:
        managed = False
        db_table = 'r_patient_drugs_information'


class RPatientFept(models.Model):
    patient_session = models.ForeignKey(DPatientDetail, models.DO_NOTHING)
    scale = models.ForeignKey(DScales, models.DO_NOTHING)
    calm = models.IntegerField(blank=True, null=True)
    angry = models.IntegerField(blank=True, null=True)
    disgusting = models.IntegerField(blank=True, null=True)
    fear = models.IntegerField(blank=True, null=True)
    happy = models.IntegerField(blank=True, null=True)
    sad = models.IntegerField(blank=True, null=True)
    wonder = models.IntegerField(blank=True, null=True)
    quality_control = models.FloatField(blank=True, null=True)
    total_score = models.IntegerField(blank=True, null=True)
    doctor = models.ForeignKey('users.Suser', models.DO_NOTHING)
    create_time = models.DateTimeField(auto_now_add=True)
    update_time = models.DateTimeField(auto_now=True)

    class Meta:
        managed = False
        db_table = 'r_patient_fept'


class RPatientGrowth(models.Model):
    patient_session = models.ForeignKey(DPatientDetail, models.DO_NOTHING)
    scale = models.ForeignKey(DScales, models.DO_NOTHING)
    question1_answer = models.IntegerField(blank=True, null=True)
    question2_answer = models.IntegerField(blank=True, null=True)
    question3_answer = models.IntegerField(blank=True, null=True)
    question4_answer = models.IntegerField(blank=True, null=True)
    question5_answer = models.IntegerField(blank=True, null=True)
    question6_answer = models.IntegerField(blank=True, null=True)
    question7_answer = models.IntegerField(blank=True, null=True)
    question8_answer = models.IntegerField(blank=True, null=True)
    question9_answer = models.IntegerField(blank=True, null=True)
    question10_answer = models.IntegerField(blank=True, null=True)
    question11_answer = models.IntegerField(blank=True, null=True)
    question12_answer = models.IntegerField(blank=True, null=True)
    question13_answer = models.IntegerField(blank=True, null=True)
    question14_answer = models.IntegerField(blank=True, null=True)
    question15_answer = models.IntegerField(blank=True, null=True)
    question16_answer = models.IntegerField(blank=True, null=True)
    question17_answer = models.IntegerField(blank=True, null=True)
    question18_answer = models.IntegerField(blank=True, null=True)
    question19_answer = models.IntegerField(blank=True, null=True)
    question20_answer = models.IntegerField(blank=True, null=True)
    question21_answer = models.IntegerField(blank=True, null=True)
    question22_answer = models.IntegerField(blank=True, null=True)
    question23_answer = models.IntegerField(blank=True, null=True)
    question24_answer = models.IntegerField(blank=True, null=True)
    question25_answer = models.IntegerField(blank=True, null=True)
    question26_answer = models.IntegerField(blank=True, null=True)
    question27_answer = models.IntegerField(blank=True, null=True)
    question28_answer = models.IntegerField(blank=True, null=True)
    first_sex_age = models.IntegerField(blank=True, null=True)
    emotion_abuse_score = models.IntegerField(blank=True, null=True)
    body_abuse_score = models.IntegerField(blank=True, null=True)
    sex_abuse_score = models.IntegerField(blank=True, null=True)
    emotion_ignore_score = models.IntegerField(blank=True, null=True)
    body_ignore_score = models.IntegerField(blank=True, null=True)
    doctor = models.ForeignKey('users.Suser', models.DO_NOTHING)
    create_time = models.DateTimeField(auto_now_add=True)
    update_time = models.DateTimeField(auto_now=True)

    class Meta:
        managed = False
        db_table = 'r_patient_growth'


class RPatientHama(models.Model):
    id = models.IntegerField(primary_key=True)
    patient_session = models.ForeignKey(DPatientDetail, models.DO_NOTHING)
    scale = models.ForeignKey(DScales, models.DO_NOTHING)
    anxiety = models.IntegerField(blank=True, null=True)
    nervous = models.IntegerField(blank=True, null=True)
    fear = models.IntegerField(blank=True, null=True)
    insomnia = models.IntegerField(blank=True, null=True)
    cognitive_function = models.IntegerField(blank=True, null=True)
    depression = models.IntegerField(blank=True, null=True)
    somaticanxiety_muscle = models.IntegerField(blank=True, null=True)
    somaticanxiety_sensory = models.IntegerField(blank=True, null=True)
    cardiovascular_symptoms = models.IntegerField(blank=True, null=True)
    respiratory_symptoms = models.IntegerField(blank=True, null=True)
    gastrointestinal_symptoms = models.IntegerField(blank=True, null=True)
    genitourinary_symptoms = models.IntegerField(blank=True, null=True)
    plantnervous_symptoms = models.IntegerField(blank=True, null=True)
    interview_behavior = models.IntegerField(blank=True, null=True)
    total_score = models.IntegerField(blank=True, null=True)
    doctor = models.ForeignKey('users.Suser', models.DO_NOTHING)
    create_time = models.DateTimeField(auto_now_add=True)
    update_time = models.DateTimeField(auto_now=True)

    class Meta:
        managed = False
        db_table = 'r_patient_hama'


class RPatientHamd17(models.Model):
    id = models.IntegerField(primary_key=True)
    patient_session = models.ForeignKey(DPatientDetail, models.DO_NOTHING)
    scale = models.ForeignKey(DScales, models.DO_NOTHING)
    depression = models.IntegerField(blank=True, null=True)
    guilt = models.IntegerField(blank=True, null=True)
    suicide = models.IntegerField(blank=True, null=True)
    difficulty_sleeping = models.IntegerField(blank=True, null=True)
    sleep_deep = models.IntegerField(blank=True, null=True)
    wake_early = models.IntegerField(blank=True, null=True)
    work_interest = models.IntegerField(blank=True, null=True)
    slow = models.IntegerField(blank=True, null=True)
    intense = models.IntegerField(blank=True, null=True)
    psycho_anxiety = models.IntegerField(blank=True, null=True)
    somatic_anxiety = models.IntegerField(blank=True, null=True)
    gastrointestinal_symptoms = models.IntegerField(blank=True, null=True)
    systemic_symptoms = models.IntegerField(blank=True, null=True)
    sexual_symptoms = models.IntegerField(blank=True, null=True)
    hypochondria = models.IntegerField(blank=True, null=True)
    lose_weight = models.IntegerField(blank=True, null=True)
    self_awareness = models.IntegerField(blank=True, null=True)
    total_score = models.IntegerField(blank=True, null=True)
    doctor = models.ForeignKey('users.Suser', models.DO_NOTHING)
    create_time = models.DateTimeField(auto_now_add=True)
    update_time = models.DateTimeField(auto_now=True)

    class Meta:
        managed = False
        db_table = 'r_patient_hamd17'


class RPatientHappiness(models.Model):
    patient_session = models.ForeignKey(DPatientDetail, models.DO_NOTHING)
    scale = models.ForeignKey(DScales, models.DO_NOTHING)
    question1_answer = models.IntegerField(blank=True, null=True)
    question2_answer = models.IntegerField(blank=True, null=True)
    question3_answer = models.IntegerField(blank=True, null=True)
    question4_answer = models.IntegerField(blank=True, null=True)
    question5_answer = models.IntegerField(blank=True, null=True)
    question6_answer = models.IntegerField(blank=True, null=True)
    question7_answer = models.IntegerField(blank=True, null=True)
    question8_answer = models.IntegerField(blank=True, null=True)
    question9_answer = models.IntegerField(blank=True, null=True)
    question10_answer = models.IntegerField(blank=True, null=True)
    question11_answer = models.IntegerField(blank=True, null=True)
    question12_answer = models.IntegerField(blank=True, null=True)
    question13_answer = models.IntegerField(blank=True, null=True)
    question14_answer = models.IntegerField(blank=True, null=True)
    total_score = models.IntegerField(blank=True, null=True)
    doctor = models.ForeignKey('users.Suser', models.DO_NOTHING)
    create_time = models.DateTimeField(auto_now_add=True)
    update_time = models.DateTimeField(auto_now=True)

    class Meta:
        managed = False
        db_table = 'r_patient_happiness'


class RPatientManicsymptom(models.Model):
    patient_session = models.ForeignKey(DPatientDetail, models.DO_NOTHING)
    scale = models.ForeignKey(DScales, models.DO_NOTHING)
    question1 = models.IntegerField(blank=True, null=True)
    question2 = models.IntegerField(blank=True, null=True)
    question3_1 = models.IntegerField(blank=True, null=True)
    question3_2 = models.IntegerField(blank=True, null=True)
    question3_3 = models.IntegerField(blank=True, null=True)
    question3_4 = models.IntegerField(blank=True, null=True)
    question3_5 = models.IntegerField(blank=True, null=True)
    question3_6 = models.IntegerField(blank=True, null=True)
    question3_7 = models.IntegerField(blank=True, null=True)
    question3_8 = models.IntegerField(blank=True, null=True)
    question3_9 = models.IntegerField(blank=True, null=True)
    question3_10 = models.IntegerField(blank=True, null=True)
    question3_11 = models.IntegerField(blank=True, null=True)
    question3_12 = models.IntegerField(blank=True, null=True)
    question3_13 = models.IntegerField(blank=True, null=True)
    question3_14 = models.IntegerField(blank=True, null=True)
    question3_15 = models.IntegerField(blank=True, null=True)
    question3_16 = models.IntegerField(blank=True, null=True)
    question3_17 = models.IntegerField(blank=True, null=True)
    question3_18 = models.IntegerField(blank=True, null=True)
    question3_19 = models.IntegerField(blank=True, null=True)
    question3_20 = models.IntegerField(blank=True, null=True)
    question3_21 = models.IntegerField(blank=True, null=True)
    question3_22 = models.IntegerField(blank=True, null=True)
    question3_23 = models.IntegerField(blank=True, null=True)
    question3_24 = models.IntegerField(blank=True, null=True)
    question3_25 = models.IntegerField(blank=True, null=True)
    question3_26 = models.IntegerField(blank=True, null=True)
    question3_27 = models.IntegerField(blank=True, null=True)
    question3_28 = models.IntegerField(blank=True, null=True)
    question3_29 = models.IntegerField(blank=True, null=True)
    question3_30 = models.IntegerField(blank=True, null=True)
    question3_31 = models.IntegerField(blank=True, null=True)
    question3_32 = models.IntegerField(blank=True, null=True)
    question3_33 = models.IntegerField(blank=True, null=True)
    question4_1 = models.IntegerField(blank=True, null=True)
    question4_2 = models.IntegerField(blank=True, null=True)
    question4_3 = models.IntegerField(blank=True, null=True)
    question4_4 = models.IntegerField(blank=True, null=True)
    question5 = models.IntegerField(blank=True, null=True)
    question6_1 = models.IntegerField(blank=True, null=True)
    question6_2 = models.IntegerField(blank=True, null=True)
    question7 = models.IntegerField(blank=True, null=True)
    question8 = models.CharField(max_length=20, blank=True, null=True)
    question9 = models.IntegerField(blank=True, null=True)
    question10 = models.IntegerField(blank=True, null=True)
    total_score = models.IntegerField(blank=True, null=True)
    doctor = models.ForeignKey('users.Suser', models.DO_NOTHING)
    create_time = models.DateTimeField(auto_now_add=True)
    update_time = models.DateTimeField(auto_now=True)

    class Meta:
        managed = False
        db_table = 'r_patient_manicsymptom'


class RPatientMedicalHistory(models.Model):
    patient_session = models.ForeignKey(DPatientDetail, models.DO_NOTHING)
    scale = models.ForeignKey(DScales, models.DO_NOTHING)
    disease_history = models.TextField()
    prophase_begin = models.DateField(blank=True, null=True)
    prophase_end = models.DateField(blank=True, null=True)
    first_time_begin = models.DateField(blank=True, null=True)
    first_time_end = models.DateField(blank=True, null=True)
    first_episode_diagnosis = models.CharField(max_length=20, blank=True, null=True)
    number_of_episode = models.IntegerField(blank=True, null=True)
    current_episode_date = models.DateField(blank=True, null=True)
    current_episode_diagnosis = models.CharField(max_length=20, blank=True, null=True)
    historical_drugs = models.IntegerField(blank=True, null=True)
    historical_drugs_month = models.IntegerField(blank=True, null=True)
    scanning_state = models.IntegerField(blank=True, null=True)
    scanning_using_drugs = models.IntegerField(blank=True, null=True)
    scanning_drugs_month = models.IntegerField(blank=True, null=True)
    doctor = models.ForeignKey('users.Suser', models.DO_NOTHING)
    create_time = models.DateTimeField(auto_now_add=True)
    update_time = models.DateTimeField(auto_now=True)

    class Meta:
        managed = False
        db_table = 'r_patient_medical_history'


class RPatientMriExamination(models.Model):
    patient_session = models.ForeignKey(DPatientDetail, models.DO_NOTHING)
    scale = models.ForeignKey(DScales, models.DO_NOTHING)
    finishing_3d = models.IntegerField(db_column='finishing_3D', blank=True, null=True)  # Field name made lowercase.
    finishing_dti = models.IntegerField(db_column='finishing_DTI', blank=True, null=True)  # Field name made lowercase.
    finishing_fmri = models.IntegerField(db_column='finishing_fMRI', blank=True,
                                         null=True)  # Field name made lowercase.
    finishing_time = models.DateField(blank=True, null=True)
    having_special_events = models.IntegerField(blank=True, null=True)
    special_events_note = models.TextField(blank=True, null=True)
    having_abnormal_region = models.IntegerField(db_column='having_abnormal_region_', blank=True, null=True)
    abnormal_region_note = models.TextField(blank=True, null=True)
    researcher_sign = models.TextField(blank=True, null=True)
    sign_date = models.DateField(blank=True, null=True)
    doctor = models.ForeignKey('users.Suser', models.DO_NOTHING)
    create_time = models.DateTimeField(auto_now_add=True)
    update_time = models.DateTimeField(auto_now=True)

    class Meta:
        managed = False
        db_table = 'r_patient_mri_examination'


class RPatientPleasure(models.Model):
    patient_session = models.ForeignKey(DPatientDetail, models.DO_NOTHING)
    scale = models.ForeignKey(DScales, models.DO_NOTHING)
    question1_answer = models.IntegerField(blank=True, null=True)
    question2_answer = models.IntegerField(blank=True, null=True)
    question3_answer = models.IntegerField(blank=True, null=True)
    question4_answer = models.IntegerField(blank=True, null=True)
    question5_answer = models.IntegerField(blank=True, null=True)
    question6_answer = models.IntegerField(blank=True, null=True)
    question7_answer = models.IntegerField(blank=True, null=True)
    question8_answer = models.IntegerField(blank=True, null=True)
    question9_answer = models.IntegerField(blank=True, null=True)
    question10_answer = models.IntegerField(blank=True, null=True)
    question11_answer = models.IntegerField(blank=True, null=True)
    question12_answer = models.IntegerField(blank=True, null=True)
    question13_answer = models.IntegerField(blank=True, null=True)
    question14_answer = models.IntegerField(blank=True, null=True)
    question15_answer = models.IntegerField(blank=True, null=True)
    question16_answer = models.IntegerField(blank=True, null=True)
    question17_answer = models.IntegerField(blank=True, null=True)
    question18_answer = models.IntegerField(blank=True, null=True)
    total_score = models.IntegerField(blank=True, null=True)
    expectation_score = models.IntegerField(blank=True, null=True)
    consume_score = models.IntegerField(blank=True, null=True)
    doctor = models.ForeignKey('users.Suser', models.DO_NOTHING)
    create_time = models.DateTimeField(auto_now_add=True)
    update_time = models.DateTimeField(auto_now=True)

    class Meta:
        managed = False
        db_table = 'r_patient_pleasure'


class RPatientRbans(models.Model):
    patient_session = models.ForeignKey(DPatientDetail, models.DO_NOTHING)
    scale = models.ForeignKey(DScales, models.DO_NOTHING)
    instant_memory_word = models.IntegerField(blank=True, null=True)
    instant_memory_story = models.IntegerField(blank=True, null=True)
    vision_graph = models.IntegerField(blank=True, null=True)
    vision_line = models.IntegerField(blank=True, null=True)
    speech_graph = models.IntegerField(blank=True, null=True)
    speech_fluency = models.IntegerField(blank=True, null=True)
    attention_number = models.IntegerField(blank=True, null=True)
    attention_code = models.IntegerField(blank=True, null=True)
    delayed_retention_word = models.IntegerField(blank=True, null=True)
    delayed_retention_word2 = models.IntegerField(blank=True, null=True)
    delayed_retention_story = models.IntegerField(blank=True, null=True)
    delayed_retention_graph = models.IntegerField(blank=True, null=True)
    instant_memory_total = models.IntegerField(blank=True, null=True)
    vision_total = models.IntegerField(blank=True, null=True)
    speech_total = models.IntegerField(blank=True, null=True)
    attention_total = models.IntegerField(blank=True, null=True)
    delayed_retention_total = models.IntegerField(blank=True, null=True)
    total_score = models.IntegerField(blank=True, null=True)
    doctor = models.ForeignKey('users.Suser', models.DO_NOTHING)
    create_time = models.DateTimeField(auto_now_add=True)
    update_time = models.DateTimeField(auto_now=True)

    class Meta:
        managed = False
        db_table = 'r_patient_rbans'


class RPatientScales(models.Model):
    patient_session = models.ForeignKey(DPatientDetail, models.DO_NOTHING)
    scale = models.ForeignKey(DScales, models.DO_NOTHING)
    state = models.IntegerField(blank=True, null=True)
    end_time = models.DateTimeField(auto_now=True)

    class Meta:
        managed = False
        db_table = 'r_patient_scales'


class RPatientSembu(models.Model):
    patient_session = models.ForeignKey(DPatientDetail, models.DO_NOTHING)
    scale = models.ForeignKey(DScales, models.DO_NOTHING)
    year_of_school = models.CharField(max_length=20, blank=True, null=True)
    grade = models.CharField(max_length=20, blank=True, null=True)
    region = models.IntegerField(blank=True, null=True)
    mark_level = models.IntegerField(blank=True, null=True)
    parents_status = models.IntegerField(blank=True, null=True)
    question1_father = models.IntegerField(blank=True, null=True)
    question1_mother = models.IntegerField(blank=True, null=True)
    question2_father = models.IntegerField(blank=True, null=True)
    question2_mother = models.IntegerField(blank=True, null=True)
    question3_father = models.IntegerField(blank=True, null=True)
    question3_mother = models.IntegerField(blank=True, null=True)
    question4_father = models.IntegerField(blank=True, null=True)
    question4_mother = models.IntegerField(blank=True, null=True)
    question5_father = models.IntegerField(blank=True, null=True)
    question5_mother = models.IntegerField(blank=True, null=True)
    question6_father = models.IntegerField(blank=True, null=True)
    question6_mother = models.IntegerField(blank=True, null=True)
    question7_father = models.IntegerField(blank=True, null=True)
    question7_mother = models.IntegerField(blank=True, null=True)
    question8_father = models.IntegerField(blank=True, null=True)
    question8_mother = models.IntegerField(blank=True, null=True)
    question9_father = models.IntegerField(blank=True, null=True)
    question9_mother = models.IntegerField(blank=True, null=True)
    question10_father = models.IntegerField(blank=True, null=True)
    question10_mother = models.IntegerField(blank=True, null=True)
    question11_father = models.IntegerField(blank=True, null=True)
    question11_mother = models.IntegerField(blank=True, null=True)
    question12_father = models.IntegerField(blank=True, null=True)
    question12_mother = models.IntegerField(blank=True, null=True)
    question13_father = models.IntegerField(blank=True, null=True)
    question13_mother = models.IntegerField(blank=True, null=True)
    question14_father = models.IntegerField(blank=True, null=True)
    question14_mother = models.IntegerField(blank=True, null=True)
    question15_father = models.IntegerField(blank=True, null=True)
    question15_mother = models.IntegerField(blank=True, null=True)
    question16_father = models.IntegerField(blank=True, null=True)
    question16_mother = models.IntegerField(blank=True, null=True)
    question17_father = models.IntegerField(blank=True, null=True)
    question17_mother = models.IntegerField(blank=True, null=True)
    question18_father = models.IntegerField(blank=True, null=True)
    question18_mother = models.IntegerField(blank=True, null=True)
    question19_father = models.IntegerField(blank=True, null=True)
    question19_mother = models.IntegerField(blank=True, null=True)
    question20_father = models.IntegerField(blank=True, null=True)
    question20_mother = models.IntegerField(blank=True, null=True)
    question21_father = models.IntegerField(blank=True, null=True)
    question21_mother = models.IntegerField(blank=True, null=True)
    refusal_mother = models.FloatField(blank=True, null=True)
    refusal_father = models.FloatField(blank=True, null=True)
    emotional_warmth_mother = models.FloatField(blank=True, null=True)
    emotional_warmth_father = models.FloatField(blank=True, null=True)
    overprotection_mother = models.FloatField(blank=True, null=True)
    overprotection_father = models.FloatField(blank=True, null=True)
    doctor = models.ForeignKey('users.Suser', models.DO_NOTHING)
    create_time = models.DateTimeField(auto_now_add=True)
    update_time = models.DateTimeField(auto_now=True)

    class Meta:
        managed = False
        db_table = 'r_patient_sembu'


class RPatientSuicidal(models.Model):
    patient_session = models.ForeignKey(DPatientDetail, models.DO_NOTHING)
    scale = models.ForeignKey(DScales, models.DO_NOTHING)
    suicide_history = models.IntegerField(blank=True, null=True)
    suicide_times = models.IntegerField(blank=True, null=True)
    question1_lastweek = models.IntegerField(blank=True, null=True)
    question1_mostdepressed = models.IntegerField(blank=True, null=True)
    question2_lastweek = models.IntegerField(blank=True, null=True)
    question2_mostdepressed = models.IntegerField(blank=True, null=True)
    question3_lastweek = models.IntegerField(blank=True, null=True)
    question3_mostdepressed = models.IntegerField(blank=True, null=True)
    question4_lastweek = models.IntegerField(blank=True, null=True)
    question4_mostdepressed = models.IntegerField(blank=True, null=True)
    question5_lastweek = models.IntegerField(blank=True, null=True)
    question5_mostdepressed = models.IntegerField(blank=True, null=True)
    question6_lastweek = models.IntegerField(blank=True, null=True)
    question6_mostdepressed = models.IntegerField(blank=True, null=True)
    question7_lastweek = models.IntegerField(blank=True, null=True)
    question7_mostdepressed = models.IntegerField(blank=True, null=True)
    question8_lastweek = models.IntegerField(blank=True, null=True)
    question8_mostdepressed = models.IntegerField(blank=True, null=True)
    question9_lastweek = models.IntegerField(blank=True, null=True)
    question9_mostdepressed = models.IntegerField(blank=True, null=True)
    question10_lastweek = models.IntegerField(blank=True, null=True)
    question10_mostdepressed = models.IntegerField(blank=True, null=True)
    question11_lastweek = models.IntegerField(blank=True, null=True)
    question11_mostdepressed = models.IntegerField(blank=True, null=True)
    question12_lastweek = models.IntegerField(blank=True, null=True)
    question12_mostdepressed = models.IntegerField(blank=True, null=True)
    question13_lastweek = models.IntegerField(blank=True, null=True)
    question13_mostdepressed = models.IntegerField(blank=True, null=True)
    question14_lastweek = models.IntegerField(blank=True, null=True)
    question14_mostdepressed = models.IntegerField(blank=True, null=True)
    question15_lastweek = models.IntegerField(blank=True, null=True)
    question15_mostdepressed = models.IntegerField(blank=True, null=True)
    question16_lastweek = models.IntegerField(blank=True, null=True)
    question16_mostdepressed = models.IntegerField(blank=True, null=True)
    question17_lastweek = models.IntegerField(blank=True, null=True)
    question17_mostdepressed = models.IntegerField(blank=True, null=True)
    question18_lastweek = models.IntegerField(blank=True, null=True)
    question18_mostdepressed = models.IntegerField(blank=True, null=True)
    question19_lastweek = models.IntegerField(blank=True, null=True)
    question19_mostdepressed = models.IntegerField(blank=True, null=True)
    total_score_lastweek = models.FloatField(blank=True, null=True)
    total_score_mostdepressed = models.FloatField(blank=True, null=True)
    doctor = models.ForeignKey('users.Suser', models.DO_NOTHING)
    create_time = models.DateTimeField(auto_now_add=True)
    update_time = models.DateTimeField(auto_now=True)
    self_mutilation_remark = models.CharField(max_length=50, blank=True, null=True)
    suicide_ideation = models.IntegerField(blank=True, null=True)
    class Meta:
        managed = False
        db_table = 'r_patient_suicidal'


class RPatientTms(models.Model):
    patient_session = models.ForeignKey(DPatientDetail, models.DO_NOTHING)
    treatment = models.ForeignKey('DTreatments', models.DO_NOTHING)
    treatment_type = models.CharField(max_length=2, blank=True, null=True)
    treatment_site = models.CharField(max_length=40, blank=True, null=True)
    motion_threshold = models.IntegerField(blank=True, null=True)
    energy_intensity = models.FloatField(blank=True, null=True)
    frequency = models.IntegerField(blank=True, null=True)
    pulses_number = models.IntegerField(blank=True, null=True)
    duration = models.IntegerField(blank=True, null=True)
    interval_time = models.IntegerField(blank=True, null=True)
    researcher_sign = models.IntegerField(blank=True, null=True)
    stimulate_num = models.IntegerField(blank=True, null=True)
    treatment_duration = models.IntegerField(blank=True, null=True)
    treatment_number = models.IntegerField(blank=True, null=True)
    feelings = models.TextField(blank=True, null=True)
    note = models.TextField(blank=True, null=True)
    begin_date = models.DateField(blank=True, null=True)
    end_date = models.DateField(blank=True, null=True)
    doctor = models.ForeignKey('users.Suser', models.DO_NOTHING)
    create_time = models.DateTimeField(auto_now_add=True)
    update_time = models.DateTimeField(auto_now=True)

    class Meta:
        managed = False
        db_table = 'r_patient_tms'


class RPatientVept(models.Model):
    patient_session = models.ForeignKey(DPatientDetail, models.DO_NOTHING)
    scale = models.ForeignKey(DScales, models.DO_NOTHING)
    calm = models.IntegerField(blank=True, null=True)
    angry = models.IntegerField(blank=True, null=True)
    disgusting = models.IntegerField(blank=True, null=True)
    fear = models.IntegerField(blank=True, null=True)
    satire = models.IntegerField(blank=True, null=True)
    sad = models.IntegerField(blank=True, null=True)
    wonder = models.IntegerField(blank=True, null=True)
    quality_control = models.FloatField(blank=True, null=True)
    total_score = models.IntegerField(blank=True, null=True)
    doctor = models.ForeignKey('users.Suser', models.DO_NOTHING)
    create_time = models.DateTimeField(auto_now_add=True)
    update_time = models.DateTimeField(auto_now=True)

    class Meta:
        managed = False
        db_table = 'r_patient_vept'


class RPatientWcst(models.Model):
    patient_session = models.ForeignKey(DPatientDetail, models.DO_NOTHING)
    scale = models.ForeignKey(DScales, models.DO_NOTHING)
    ra = models.IntegerField(blank=True, null=True)
    cc = models.IntegerField(blank=True, null=True)
    rc = models.IntegerField(blank=True, null=True)
    rcp = models.FloatField(blank=True, null=True)
    re = models.IntegerField(blank=True, null=True)
    rf = models.IntegerField(blank=True, null=True)
    rfp = models.FloatField(blank=True, null=True)
    rp = models.IntegerField(blank=True, null=True)
    rpe = models.IntegerField(blank=True, null=True)
    rpep = models.FloatField(blank=True, null=True)
    nrpe = models.IntegerField(blank=True, null=True)
    fm = models.IntegerField(blank=True, null=True)
    l_l = models.FloatField(blank=True, null=True)
    doctor = models.ForeignKey('users.Suser', models.DO_NOTHING)
    create_time = models.DateTimeField(auto_now_add=True)
    update_time = models.DateTimeField(auto_now=True)

    class Meta:
        managed = False
        db_table = 'r_patient_wcst'


class RPatientYbobsessiontable(models.Model):
    id = models.IntegerField(primary_key=True)
    patient_session = models.ForeignKey(DPatientDetail, models.DO_NOTHING)
    scale = models.ForeignKey(DScales, models.DO_NOTHING)
    forced_frequency = models.IntegerField(blank=True, null=True)
    impediment_degree1 = models.IntegerField(blank=True, null=True)
    impediment_degree2 = models.IntegerField(blank=True, null=True)
    distress = models.IntegerField(blank=True, null=True)
    fightforced_degree = models.IntegerField(blank=True, null=True)
    control_ability1 = models.IntegerField(blank=True, null=True)
    control_ability2 = models.IntegerField(blank=True, null=True)
    compulsion_frequency = models.IntegerField(blank=True, null=True)
    stopcompulsion_anxiety = models.IntegerField(blank=True, null=True)
    stopforced_frequency = models.IntegerField(blank=True, null=True)
    total_score = models.IntegerField(blank=True, null=True)
    doctor = models.ForeignKey('users.Suser', models.DO_NOTHING)
    create_time = models.DateTimeField(auto_now_add=True)
    update_time = models.DateTimeField(auto_now=True)

    class Meta:
        managed = False
        db_table = 'r_patient_ybobsessiontable'


class RPatientYmrs(models.Model):
    id = models.IntegerField(primary_key=True)
    patient_session = models.ForeignKey(DPatientDetail, models.DO_NOTHING)
    scale = models.ForeignKey(DScales, models.DO_NOTHING)
    emotional_upsurge = models.IntegerField(blank=True, null=True)
    vigorous_energy = models.IntegerField(blank=True, null=True)
    sexual_desire = models.IntegerField(blank=True, null=True)
    sleep = models.IntegerField(blank=True, null=True)
    irritability = models.IntegerField(blank=True, null=True)
    speech = models.IntegerField(blank=True, null=True)
    language = models.IntegerField(blank=True, null=True)
    thinking_content = models.IntegerField(blank=True, null=True)
    aggressive_behavior = models.IntegerField(blank=True, null=True)
    appearance = models.IntegerField(blank=True, null=True)
    self_awareness = models.IntegerField(blank=True, null=True)
    total_score = models.IntegerField(blank=True, null=True)
    doctor = models.ForeignKey('users.Suser', models.DO_NOTHING)
    create_time = models.DateTimeField(auto_now_add=True)
    update_time = models.DateTimeField(auto_now=True)

    class Meta:
        managed = False
        db_table = 'r_patient_ymrs'


class RSelfTestDuration(models.Model):
    id = models.IntegerField(primary_key=True, auto_created=True)
    patient_session = models.ForeignKey(DPatientDetail, models.DO_NOTHING)
    scale = models.ForeignKey(DScales, models.DO_NOTHING)
    question_index = models.IntegerField(blank=True, null=True)
    duration = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'r_self_test_duration'


class RPatientPss(models.Model):
    patient_session = models.ForeignKey(DPatientDetail, models.DO_NOTHING)
    scale = models.ForeignKey(DScales, models.DO_NOTHING)
    question1_answer = models.IntegerField(blank=True, null=True)
    question2_answer = models.IntegerField(blank=True, null=True)
    question3_answer = models.IntegerField(blank=True, null=True)
    question4_answer = models.IntegerField(blank=True, null=True)
    question5_answer = models.IntegerField(blank=True, null=True)
    question6_answer = models.IntegerField(blank=True, null=True)
    question7_answer = models.IntegerField(blank=True, null=True)
    question8_answer = models.IntegerField(blank=True, null=True)
    question9_answer = models.IntegerField(blank=True, null=True)
    question10_answer = models.IntegerField(blank=True, null=True)
    question11_answer = models.IntegerField(blank=True, null=True)
    question12_answer = models.IntegerField(blank=True, null=True)
    question13_answer = models.IntegerField(blank=True, null=True)
    question14_answer = models.IntegerField(blank=True, null=True)
    total_score = models.IntegerField(blank=True, null=True)
    doctor = models.ForeignKey('users.Suser', models.DO_NOTHING)
    create_time = models.DateTimeField(auto_now_add=True)
    update_time = models.DateTimeField(auto_now=True)

    class Meta:
        managed = False
        db_table = 'r_patient_pss'


class RPatientInsomnia(models.Model):
    patient_session = models.ForeignKey(DPatientDetail, models.DO_NOTHING)
    scale = models.ForeignKey(DScales, models.DO_NOTHING)
    question1_answer = models.IntegerField(blank=True, null=True)
    question2_answer = models.IntegerField(blank=True, null=True)
    question3_answer = models.IntegerField(blank=True, null=True)
    question4_answer = models.IntegerField(blank=True, null=True)
    question5_answer = models.IntegerField(blank=True, null=True)
    question6_answer = models.IntegerField(blank=True, null=True)
    question7_answer = models.IntegerField(blank=True, null=True)
    total_score = models.IntegerField(blank=True, null=True)
    doctor = models.ForeignKey('users.Suser', models.DO_NOTHING)
    create_time = models.DateTimeField(auto_now_add=True)
    update_time = models.DateTimeField(auto_now=True)

    class Meta:
        managed = False
        db_table = 'r_patient_insomnia'


class RPatientPhq(models.Model):
    patient_session = models.ForeignKey(DPatientDetail, models.DO_NOTHING)
    scale = models.ForeignKey(DScales, models.DO_NOTHING)
    question1_answer = models.IntegerField(blank=True, null=True)
    question2_answer = models.IntegerField(blank=True, null=True)
    question3_answer = models.IntegerField(blank=True, null=True)
    question4_answer = models.IntegerField(blank=True, null=True)
    question5_answer = models.IntegerField(blank=True, null=True)
    question6_answer = models.IntegerField(blank=True, null=True)
    question7_answer = models.IntegerField(blank=True, null=True)
    question8_answer = models.IntegerField(blank=True, null=True)
    question9_answer = models.IntegerField(blank=True, null=True)
    total_score = models.IntegerField(blank=True, null=True)
    doctor = models.ForeignKey('users.Suser', models.DO_NOTHING)
    create_time = models.DateTimeField(auto_now_add=True)
    update_time = models.DateTimeField(auto_now=True)

    class Meta:
        managed = False
        db_table = 'r_patient_phq'


class RPatientGad(models.Model):
    patient_session = models.ForeignKey(DPatientDetail, models.DO_NOTHING)
    scale = models.ForeignKey(DScales, models.DO_NOTHING)
    question1_answer = models.IntegerField(blank=True, null=True)
    question2_answer = models.IntegerField(blank=True, null=True)
    question3_answer = models.IntegerField(blank=True, null=True)
    question4_answer = models.IntegerField(blank=True, null=True)
    question5_answer = models.IntegerField(blank=True, null=True)
    question6_answer = models.IntegerField(blank=True, null=True)
    question7_answer = models.IntegerField(blank=True, null=True)
    total_score = models.IntegerField(blank=True, null=True)
    doctor = models.ForeignKey('users.Suser', models.DO_NOTHING)
    create_time = models.DateTimeField(auto_now_add=True)
    update_time = models.DateTimeField(auto_now=True)

    class Meta:
        managed = False
        db_table = 'r_patient_gad'
