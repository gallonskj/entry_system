from django.shortcuts import render, redirect
import json
import tools.insertCascadeCheck as tools_insertCascadeCheck
import tools.calculatingScores as tools_calculatingScores
import tools.Utils as tools_utils
import scales.models as scales_models
import patients.models as patient_models
import tools.config as tools_config
import patients.dao as patients_dao


################### 自定义update方法 ####################
################### 自定义update方法 ####################
################### 自定义update方法 ####################

# 这里不能使用update方法，django中使用自带update方法无法更新带有auto_now的时间字段
# 更新r_patient_scales中的state状态
def update_rscales_state(patient_session_id, scale_id, state):
    rPatientScales = \
        scales_models.RPatientScales.objects.filter(patient_session_id=patient_session_id, scale_id=scale_id)[0]
    rPatientScales.state = state
    rPatientScales.save()

def update_rscales_skip(patient_session_id, scale_id, state):
    rPatientScales = \
        scales_models.RPatientScales.objects.filter(patient_session_id=patient_session_id, scale_id=scale_id)[0]
    rPatientScales.state = state
    rPatientScales.save()

################### insert方法部分 #####################
################### insert方法部分 #####################
################### insert方法部分 #####################
################### insert方法部分 #####################


#######################################################################################
########################## add_hamd_database 可以作为dao的样例 #########################
#######################################################################################

# 病人病史表
def add_medical_history(rPatientMedicalHistory):
    # 插入前的级联检验
    # 存入数据库
    rPatientMedicalHistory.save()
    update_rscales_state(rPatientMedicalHistory.patient_session_id, rPatientMedicalHistory.scale_id)

def add_drugs_information(rPatientDrugsInformation):
    rPatientDrugsInformation.save()
# 汉密尔顿焦虑量表
def add_hamd_database(rPatientHAMD17):
    # 计算量表得分
    rPatientHAMD17.total_score, object_flag = tools_calculatingScores.HAMD17_total_score(rPatientHAMD17)
    # 量表得分检验
    tools_utils.object_judgment(object_flag)
    # 插入前的级联检验
    tools_insertCascadeCheck.insert_hama_check(rPatientHAMD17)
    # 插入数据库
    rPatientHAMD17.save()
    state = 1
    # 修改r_patient_scales表中state状态
    update_rscales_state(rPatientHAMD17.patient_session_id, rPatientHAMD17.scale_id,state)

# 33 项轻躁狂症状清单
def add_manicsymptom_database(rPatientManicsymptom):
    # 存进数据库
    rPatientManicsymptom.total_score, object_flag = tools_calculatingScores.ManicSymptom_total_score(
        rPatientManicsymptom)
    tools_utils.object_judgment(object_flag)
    # 插入前的级联检验
    tools_insertCascadeCheck.insert_mainicsymptom_check(rPatientManicsymptom)
    # 插入数据库
    rPatientManicsymptom.save()
    # 修改r_patient_scales表中state状态
    update_rscales_state(rPatientManicsymptom.patient_session_id, rPatientManicsymptom.scale_id)

# 斯奈斯和汉密尔顿快乐量表
def add_happiness_database(rPatienthappiness):
    # 存进数据库
    rPatienthappiness.total_score, object_flag = tools_calculatingScores.happiness_total_score(rPatienthappiness)
    tools_utils.object_judgment(object_flag)
    # 插入前的级联检验
    tools_insertCascadeCheck.insert_hapiness_check(rPatienthappiness)
    # 插入数据库
    rPatienthappiness.save()
    # 修改r_patient_scales表中state状态
    update_rscales_state(rPatienthappiness.patient_session_id, rPatienthappiness.scale_id)

def add_chinesehandle_database(rPatientChineseHandy):
    rPatientChineseHandy.result, object_flag = tools_calculatingScores.Handy_total_score(rPatientChineseHandy)
    tools_utils.object_judgment(object_flag)
    # 插入前的级联检验
    tools_insertCascadeCheck.insert_handle_check(rPatientChineseHandy)
    # 插入数据库
    rPatientChineseHandy.save()
    # 修改r_patient_scales表中state状态
    update_rscales_state(rPatientChineseHandy.patient_session_id, rPatientChineseHandy.scale_id)
    # 做完利手量表后，也需要修改patient_detail表中的利手状态
    patient_detail = patients_dao.get_patient_detail_byPK(rPatientChineseHandy.patient_session_id)
    patient_detail.handy = rPatientChineseHandy.result
    patients_dao.add_patient_detail(patient_detail)

def add_information_study_database(rPatientBasicInformationStudy):
    # 插入前的级联检验
    tools_insertCascadeCheck.insert_information_study_check(rPatientBasicInformationStudy)
    # 插入数据库
    rPatientBasicInformationStudy.save()
    # 修改r_patient_scales表中state状态
    update_rscales_state(rPatientBasicInformationStudy.patient_session_id, rPatientBasicInformationStudy.scale_id)


#############################################################################################
#############################################################################################syh


def add_patient_medical_history(rPatientMedicalHistory_object):
    # 插入前的级联检验
    tools_insertCascadeCheck.insert_patient_medical_history_check(rPatientMedicalHistory_object)
    # 插入数据库
    rPatientMedicalHistory_object.save()

def add_patient_drugs_information(rPatientDrugInformation_object):
    # 插入前的级联检验
    tools_insertCascadeCheck.insert_patient_drug_information_check(rPatientDrugInformation_object)
    # 插入数据库
    rPatientDrugInformation_object.save()

def add_cognitive_emotion_database(rPatientCognitiveEmotion):
    # 得分计算
    rPatientCognitiveEmotion.total_score, rPatientCognitiveEmotion.blame_self, rPatientCognitiveEmotion.blame_others, rPatientCognitiveEmotion.meditation, \
    rPatientCognitiveEmotion.catastrophization, rPatientCognitiveEmotion.accepted, rPatientCognitiveEmotion.positive_refocus, rPatientCognitiveEmotion.program_refocus, \
    rPatientCognitiveEmotion.positive_evaluation, rPatientCognitiveEmotion.rational_analysis, object_flag \
        = tools_calculatingScores.CognitiveEmotion_total_score(rPatientCognitiveEmotion)

    tools_utils.object_judgment(object_flag)
    # 插入前的级联检验
    tools_insertCascadeCheck.insert_cognitive_emotion_check(rPatientCognitiveEmotion)
    # 插入数据库
    rPatientCognitiveEmotion.save()
    # 修改r_patient_scales表中state状态
    update_rscales_state(rPatientCognitiveEmotion.patient_session_id, rPatientCognitiveEmotion.scale_id)

def add_pleasure_database(rPatientPleasure):
    rPatientPleasure.exception_score, rPatientPleasure.consume_score, object_flag = tools_calculatingScores.pleasure_total_score(
        rPatientPleasure)
    if rPatientPleasure.exception_score is not None and rPatientPleasure.consume_score is not None:
        rPatientPleasure.total_score = rPatientPleasure.exception_score + rPatientPleasure.consume_score
        tools_utils.object_judgment(object_flag)
    else:
        tools_utils.object_judgment(True)
    # 插入前的级联检验
    tools_insertCascadeCheck.insert_pleasure_check(rPatientPleasure)
    # 插入数据库
    rPatientPleasure.save()
    # 修改r_patient_scales表中state状态
    update_rscales_state(rPatientPleasure.patient_session_id, rPatientPleasure.scale_id)

def add_bprs_database(rPatientbprs,state):
    rPatientbprs.total_score, object_flag = tools_calculatingScores.Bprs_total_score(rPatientbprs)
    tools_utils.object_judgment(object_flag)
    # 插入前的级联检验
    tools_insertCascadeCheck.insert_bprs_check(rPatientbprs)
    # 插入数据库
    rPatientbprs.save()
    # 修改r_patient_scales表中state状态
    update_rscales_state(rPatientbprs.patient_session_id, rPatientbprs.scale_id,state)

def add_rbans_database(rPatientrbans):
    # 插入前的级联检验
    tools_insertCascadeCheck.insert_rbans_check(rPatientrbans)
    # 插入数据库
    rPatientrbans.save()
    # 修改r_patient_scales表中state状态
    update_rscales_state(rPatientrbans.patient_session_id, rPatientrbans.scale_id)

def add_patient_basic_information_health_database(rPatientBasicInformationHealth):
    # 插入前的级联检验
    tools_insertCascadeCheck.insert_information_health_check(rPatientBasicInformationHealth)
    # 插入数据库
    rPatientBasicInformationHealth.save()
    # 修改r_patient_scales表中state状态
    update_rscales_state(rPatientBasicInformationHealth.patient_session_id, rPatientBasicInformationHealth.scale_id)

#############################################################################################syh
############################################################
# zrq------------------------------------

def add_hama_database(rPatientHama,state):
    rPatientHama.total_score, object_flag = tools_calculatingScores.HAMA_total_score(rPatientHama)
    tools_utils.object_judgment(object_flag)
    # 插入前的级联检验
    tools_insertCascadeCheck.insert_hama_check(rPatientHama)
    # 插入数据库
    rPatientHama.save()
    # 修改r_patient_scales表中state状态
    update_rscales_state(rPatientHama.patient_session_id, rPatientHama.scale_id,state)

def add_abuse_database(rPatientBasicInformationAbuse):
    # 插入前的级联检验
    tools_insertCascadeCheck.insert_information_abuse_check(rPatientBasicInformationAbuse)
    # 插入数据库
    rPatientBasicInformationAbuse.save()
    # 修改r_patient_scales表中state状态
    update_rscales_state(rPatientBasicInformationAbuse.patient_session_id, rPatientBasicInformationAbuse.scale_id)

def add_growth_database(rPatientGrowth):
    rPatientGrowth.emotion_abuse_score, rPatientGrowth.body_abuse_score, rPatientGrowth.sex_abuse_score, rPatientGrowth.emotion_ignore_score, \
    rPatientGrowth.body_ignore_score, object_flag = tools_calculatingScores.growth_total_score(rPatientGrowth)
    tools_utils.object_judgment(object_flag)
    # 插入前的级联检验
    tools_insertCascadeCheck.insert_growth_check(rPatientGrowth)
    # 插入数据库
    rPatientGrowth.save()
    # 修改r_patient_scales表中state状态
    update_rscales_state(rPatientGrowth.patient_session_id, rPatientGrowth.scale_id)

def add_adolescent_events_database(rPatientAdolescentEvents):
    rPatientAdolescentEvents.total_score, object_flag = tools_calculatingScores.AdolescentEvents_total_score(
        rPatientAdolescentEvents)
    tools_utils.object_judgment(object_flag)
    # 插入前的级联检验
    tools_insertCascadeCheck.insert_adolescnet_event_check(rPatientAdolescentEvents)
    # 插入数据库
    rPatientAdolescentEvents.save()
    # 修改r_patient_scales表中state状态
    update_rscales_state(rPatientAdolescentEvents.patient_session_id, rPatientAdolescentEvents.scale_id)

# 这里的total_score需要从前台获取，认知的所有表都需要手动填总分 面孔情绪感知
def add_fept_database(rPatientFept):
    # 存进数据库
    # 插入前的级联检验
    tools_insertCascadeCheck.insert_fept_check(rPatientFept)
    # 插入数据库
    rPatientFept.save()
    # 修改r_patient_scales表中state状态
    update_rscales_state(rPatientFept.patient_session_id, rPatientFept.scale_id)

# 这里的total_score需要从前台或许，认知的所有表都需要手动填总分 语音情绪感知
def add_vept_database(rPatientVept):
    # 存进数据库
    # 插入前的级联检验
    tools_insertCascadeCheck.insert_vept_check(rPatientVept)
    # 插入数据库
    rPatientVept.save()
    # 修改r_patient_scales表中state状态
    update_rscales_state(rPatientVept.patient_session_id, rPatientVept.scale_id)

###################################

def add_ymrs_database(rPatientYmrs,state):
    rPatientYmrs.total_score, object_flag = tools_calculatingScores.YMRS_total_score(rPatientYmrs)
    tools_utils.object_judgment(object_flag)
    # 插入前的级联检验
    tools_insertCascadeCheck.insert_ymrs_check(rPatientYmrs)
    # 插入数据库
    rPatientYmrs.save()
    # 修改r_patient_scales表中state状态
    update_rscales_state(rPatientYmrs.patient_session_id, rPatientYmrs.scale_id,state)

def add_sembu_database(rPatientSembu):
    rPatientSembu.refusal_mother, rPatientSembu.refusal_father, rPatientSembu.emotional_warmth_mother, \
    rPatientSembu.emotional_warmth_father, rPatientSembu.overprotection_mother, rPatientSembu.overprotection_father, \
    object_flag = tools_calculatingScores.SEmbu_total_score(rPatientSembu)

    tools_utils.object_judgment(object_flag)
    # 插入前的级联检验
    tools_insertCascadeCheck.insert_sembu_check(rPatientSembu)
    # 插入数据库
    rPatientSembu.save()
    # 修改r_patient_scales表中state状态
    update_rscales_state(rPatientSembu.patient_session_id, rPatientSembu.scale_id)

def dao_add_family_info(patient_basic_info_family):
    # 插入前的级联检验
    tools_insertCascadeCheck.insert_information_family_check(patient_basic_info_family)
    # 插入数据库
    patient_basic_info_family.save()
    # 修改r_patient_scales表中state状态
    update_rscales_state(patient_basic_info_family.patient_session_id, patient_basic_info_family.scale_id)

def dao_add_suicide(rpatientsuicidal):
    # 计算总分
    rpatientsuicidal.total_score_lastweek, rpatientsuicidal.total_score_mostdpressed, object_flag = tools_calculatingScores.Suicidal_total_score(
        rpatientsuicidal)
    tools_utils.object_judgment(object_flag)
    # 插入前的级联检验
    tools_insertCascadeCheck.insert_suicide_check(rpatientsuicidal)
    # 插入数据库
    rpatientsuicidal.save()
    # 修改r_patient_scales表中state状态
    update_rscales_state(rpatientsuicidal.patient_session_id, rpatientsuicidal.scale_id)

def dao_add_ybo(rpatientybobsessiontable):
    # 计算总分的函数写在这
    rpatientybobsessiontable.total_score, object_flag = tools_calculatingScores.YBO_total_score(
        rpatientybobsessiontable)
    tools_utils.object_judgment(object_flag)
    # 插入前的级联检验
    tools_insertCascadeCheck.insert_YBO_check(rpatientybobsessiontable)
    # 插入数据库
    rpatientybobsessiontable.save()
    # 修改r_patient_scales表中state状态
    update_rscales_state(rpatientybobsessiontable.patient_session_id, rpatientybobsessiontable.scale_id)

def add_atq_database(rPatientAtq):
    rPatientAtq.total_score, object_flag = tools_calculatingScores.ATQ_total_score(rPatientAtq)
    tools_utils.object_judgment(object_flag)
    # 插入前的级联检验
    tools_insertCascadeCheck.insert_ATQ_check(rPatientAtq)
    # 插入数据库
    rPatientAtq.save()
    # 修改r_patient_scales表中state状态
    update_rscales_state(rPatientAtq.patient_session_id, rPatientAtq.scale_id)

def add_wcst_database(rPatientWcst):
    # 插入前的级联检验
    tools_insertCascadeCheck.insert_wcst_check(rPatientWcst)
    # 插入数据库
    rPatientWcst.save()
    # 修改r_patient_scales表中state状态
    update_rscales_state(rPatientWcst.patient_session_id, rPatientWcst.scale_id)

def add_other_database(rPatientBasicInformationOther):
    # 插入前的级联检验
    tools_insertCascadeCheck.insert_information_other_check(rPatientBasicInformationOther)
    # 插入数据库
    rPatientBasicInformationOther.save()
    # 修改r_patient_scales表中state状态
    update_rscales_state(rPatientBasicInformationOther.patient_session_id, rPatientBasicInformationOther.scale_id)


################### get方法部分 #####################
################### get方法部分 #####################
################### get方法部分 #####################
################### get方法部分 #####################

# r_patient_medical_history 表
def get_patient_medical_history_byPatientId(patient_detail_id):
    patient_medical_history = scales_models.RPatientMedicalHistory.objects.filter(patient_session=patient_detail_id)
    if patient_medical_history.count() == 0:
        return None
    else:
        return patient_medical_history[0]

# r_patient_drugs_information 表
def get_patient_drugs_information_byPatientId(patient_detail_id):
    patient_drugs_information_list = scales_models.RPatientDrugsInformation.objects.filter(
        patient_session=patient_detail_id)
    return patient_drugs_information_list

# patient base info 表
def get_patient_base_info_family_byPatientDetailId(patient_detail_id):
    patient_base_info_family = scales_models.RPatientBasicInformationFamily.objects.filter(
        patient_session=patient_detail_id)
    if patient_base_info_family.count() == 0:
        return None
    else:
        return patient_base_info_family[0]

def get_patient_base_info_study_byPatientDetailId(patient_detail_id):
    patient_base_info_study = scales_models.RPatientBasicInformationStudy.objects.filter(
        patient_session=patient_detail_id)
    if patient_base_info_study.count() == 0:
        return None
    else:
        return patient_base_info_study[0]

def get_patient_base_info_health_byPatientDetailId(patient_detail_id):
    patient_base_info_health = scales_models.RPatientBasicInformationHealth.objects.filter(
        patient_session=patient_detail_id)
    if patient_base_info_health.count() == 0:
        return None
    else:
        return patient_base_info_health[0]

def get_patient_base_info_abuse_byPatientDetailId(patient_detail_id):
    patient_base_info_abuse = scales_models.RPatientBasicInformationAbuse.objects.filter(
        patient_session=patient_detail_id)
    if patient_base_info_abuse.count() == 0:
        return None
    else:
        return patient_base_info_abuse[0]

def get_patient_base_info_other_byPatientDetailId(patient_detail_id):
    patient_base_info_other = scales_models.RPatientBasicInformationOther.objects.filter(
        patient_session=patient_detail_id)
    if patient_base_info_other.count() == 0:
        return None
    else:
        return patient_base_info_other[0]

# 中国人利手量表
def get_patient_handy_byPatientDetailId(patient_detail_id):
    patient_handy = scales_models.RPatientChineseHandy.objects.filter(patient_session=patient_detail_id)
    if patient_handy.count() == 0:
        return None
    else:
        return patient_handy[0]

# 汉密尔顿抑郁量表HAMD17
def get_patient_HAMD17_byPatientDetailId(patient_detail_id):
    patient_HAMD17 = scales_models.RPatientHamd17.objects.filter(patient_session=patient_detail_id)
    if patient_HAMD17.count() == 0:
        return None
    else:
        return patient_HAMD17[0]

# 汉密尔顿焦虑量表HAMA
def get_patient_HAMA_byPatientDetailId(patient_detail_id):
    patient_HAMA = scales_models.RPatientHama.objects.filter(patient_session=patient_detail_id)
    if patient_HAMA.count() == 0:
        return None
    else:
        return patient_HAMA[0]

# 杨氏躁狂量表YMRS
def get_patient_YMRS_byPatientDetailId(patient_detail_id):
    patient_YMRS = scales_models.RPatientYmrs.objects.filter(patient_session=patient_detail_id)
    if patient_YMRS.count() == 0:
        return None
    else:
        return patient_YMRS[0]

# BPRS简明精神量表
def get_patient_BPRS_byPatientDetailId(patient_detail_id):
    patient_BPRS = scales_models.RPatientBprs.objects.filter(patient_session=patient_detail_id)
    if patient_BPRS.count() == 0:
        return None
    else:
        return patient_BPRS[0]

# 耶鲁布朗
def get_patient_YBO_byPatientDetailId(patient_detail_id):
    patient_YBO = scales_models.RPatientYbobsessiontable.objects.filter(patient_session=patient_detail_id)
    if patient_YBO.count() == 0:
        return None
    else:
        return patient_YBO[0]

# 自杀意念及行为史
def get_patient_suicidal_byPatientDetailId(patient_detail_id):
    patient_suicidal = scales_models.RPatientSuicidal.objects.filter(patient_session=patient_detail_id)
    if patient_suicidal.count() == 0:
        return None
    else:
        return patient_suicidal[0]

# 33项轻躁狂
def get_patient_manicSymptom_byPatientDetailId(patient_detail_id):
    patient_manicSymptom = scales_models.RPatientManicsymptom.objects.filter(patient_session=patient_detail_id)
    if patient_manicSymptom.count() == 0:
        return None
    else:
        return patient_manicSymptom[0]

# 斯奈斯和汉密尔顿快乐
def get_patient_happiness_byPatientDetailId(patient_detail_id):
    patient_happiness = scales_models.RPatientHappiness.objects.filter(patient_session=patient_detail_id)
    if patient_happiness.count() == 0:
        return None
    else:
        return patient_happiness[0]

# 快感体验能力量表
def get_patient_pleasure_byPatientDetailId(patient_detail_id):
    patient_pleasure = scales_models.RPatientPleasure.objects.filter(patient_session=patient_detail_id)
    if patient_pleasure.count() == 0:
        return None
    else:
        return patient_pleasure[0]

# 儿童期（16岁前）成长经历
def get_patient_growth_byPatientDetailId(patient_detail_id):
    patient_growth = scales_models.RPatientGrowth.objects.filter(patient_session=patient_detail_id)
    if patient_growth.count() == 0:
        return None
    else:
        return patient_growth[0]

# 青少年生活事件量表
def get_patient_adolescent_byPatientDetailId(patient_detail_id):
    patient_adolescent = scales_models.RPatientAdolescentEvents.objects.filter(patient_session=patient_detail_id)
    if patient_adolescent.count() == 0:
        return None
    else:
        return patient_adolescent[0]

# 认知情绪调节量表
def get_patient_cognitive_byPatientDetailId(patient_detail_id):
    patient_cognitive = scales_models.RPatientCognitiveEmotion.objects.filter(patient_session=patient_detail_id)
    if patient_cognitive.count() == 0:
        return None
    else:
        return patient_cognitive[0]

# 简式父母养育方式问卷表
def get_patient_SEmbu_byPatientDetailId(patient_detail_id):
    patient_SEmbu = scales_models.RPatientSembu.objects.filter(patient_session=patient_detail_id)
    if patient_SEmbu.count() == 0:
        return None
    else:
        return patient_SEmbu[0]

# 自动思维问卷表
def get_patient_ATQ_byPatientDetailId(patient_detail_id):
    patient_ATQ = scales_models.RPatientAtq.objects.filter(patient_session=patient_detail_id)
    if patient_ATQ.count() == 0:
        return None
    else:
        return patient_ATQ[0]

# 威斯康星WCST
def get_patient_wcst_byPatientDetailId(patient_detail_id):
    patient_wcst = scales_models.RPatientWcst.objects.filter(patient_session=patient_detail_id)
    if patient_wcst.count() == 0:
        return None
    else:
        return patient_wcst[0]

# 重复成套性神经心理状态测验系统RBANS
def get_patient_rbans_byPatientDetailId(patient_detail_id):
    patient_rbans = scales_models.RPatientRbans.objects.filter(patient_session=patient_detail_id)
    if patient_rbans.count() == 0:
        return None
    else:
        return patient_rbans[0]

# 面孔情绪感知能力测试
def get_patient_fept_byPatientDetailId(patient_detail_id):
    patient_fept = scales_models.RPatientFept.objects.filter(patient_session=patient_detail_id)
    if patient_fept.count() == 0:
        return None
    else:
        return patient_fept[0]

# 语音情绪感知能力测试VEPT
def get_patient_vept_byPatientDetailId(patient_detail_id):
    patient_vept = scales_models.RPatientVept.objects.filter(patient_session=patient_detail_id)
    if patient_vept.count() == 0:
        return None
    else:
        return patient_vept[0]

def get_handy_byPatientDetailId(patient_detail_id):
    patient_handy = scales_models.RPatientChineseHandy.objects.filter(patient_session_id=patient_detail_id)
    if patient_handy.count() == 0:
        return None
    else:
        return patient_handy[0]

# 获取某个类别的量表未完成的最小值,都已经完成了，那么返回None
def get_min_unfinished_scale(do_scale_type, patient_session_id, cur_scale_id):
    res = scales_models.RPatientScales.objects.filter(scale__do_scale_type=do_scale_type,
                                                      patient_session_id=patient_session_id, state=0,
                                                      scale_id__gt=cur_scale_id).order_by('scale_id')
    if res.count() == 0:
        return None
    return res[0].scale_id

def get_scalename_bytype(do_scale_type, patient_session_id):
    res = scales_models.RPatientScales.objects.all().select_related().filter(scale__do_scale_type=do_scale_type,
                                                                             patient_session_id=patient_session_id).values(
        'scale__scale_name', 'state')
    return res

# 获取未完成的scale量表
def get_uodo_scales(patient_session_id):
    scales_list = scales_models.RPatientScales.objects.all().select_related('scale'). \
        filter(patient_session_id=patient_session_id, state=0).values('scale__do_scale_type', 'scale__scale_name')
    information_list = []
    other_test_list = []
    self_test_list = []
    cognition_list = []
    no_type_list = []
    for scale in scales_list:
        if scale['scale__do_scale_type'] == 0:
            information_list.append(scale)
        elif scale['scale__do_scale_type'] == 1:
            other_test_list.append(scale)
        elif scale['scale__do_scale_type'] == 2:
            self_test_list.append(scale)
        elif scale['scale__do_scale_type'] == 3:
            cognition_list.append(scale)
        else:
            no_type_list.append(scale)
    return information_list, other_test_list, self_test_list, cognition_list


# 根据获取量表
def get_scale_by_id(scale_id):
    scale = scales_models.DScales.objects.filter(pk=scale_id)
    if scale.exists():
        return scale[0]
    else:
        return None

def get_scale_by_doscaletype(type):
    res = scales_models.DScales.objects.filter(do_scale_type=type)
    if res.exists():
        return res
    return None

################__________________###################3
#获取hama填写结果
def get_hama_answer(patient_id):
    hama_list = scales_models.RPatientHama.objects.filter(patient_session_id=patient_id)[0]
    return hama_list

#获取hamd填写结果
def get_hamd_answer(patient_id):
    hamd_list = scales_models.RPatientHamd17.objects.filter(patient_session_id=patient_id)[0]
    return hamd_list

#获取ymrs填写结果
def get_ymrs_answer(patient_id):
    ymrs_list = scales_models.RPatientYmrs.objects.filter(patient_session_id=patient_id)[0]
    return ymrs_list

#获取bprs填写结果
def get_bprs_answer(patient_id):
    bprs_list = scales_models.RPatientBprs.objects.filter(patient_session_id=patient_id)[0]
    return bprs_list

##############__________________________######################
def get_last_scales_detail(patient_session_id,scale_id):
    scale_queryset = scales_models.RPatientScales.objects.filter(patient_session_id=patient_session_id,scale_id__lt=scale_id).order_by('-scale_id')
    if not scale_queryset.exists():
        return None
    return scale_queryset[0]

def get_next_scales_detail(patient_session_id,scale_id):
    scale_queryset = scales_models.RPatientScales.objects.filter(patient_session_id=patient_session_id,scale_id__gt=scale_id).order_by('scale_id')
    if not scale_queryset.exists():
        return None
    return scale_queryset[0]

def get_order(patient_session_id,scale_id):
    do_scale_type = scales_models.DScales.objects.filter(id=scale_id)[0].do_scale_type
    scales_order=scales_models.RPatientScales.objects.filter(patient_session_id=patient_session_id).select_related('scale').\
        filter(scale__do_scale_type=do_scale_type).order_by('scale_id')
    invert_scales_order=scales_models.RPatientScales.objects.filter(patient_session_id=patient_session_id).select_related('scale').\
        filter(scale__do_scale_type=do_scale_type).order_by('-scale_id')
    first=scales_order[0].scale_id
    last=invert_scales_order[0].scale_id
    return first,last

def get_scale_state(patient_session_id, scale_id):
    res = scales_models.RPatientScales.objects.filter(patient_session_id=patient_session_id,scale_id=scale_id)
    if not res.exists():
        return None
    return res[0].state

def del_pleasure_scale(patient_session_id,scale_id):
    res = scales_models.RPatientPleasure.objects.filter(patient_session_id=patient_session_id,scale_id=scale_id)
    if res.exists():
        res[0].delete()

def del_r_patient_scale(patient_session_id,scale_id):
    res = scales_models.RPatientScales.objects.filter(patient_session_id=patient_session_id,scale_id=scale_id)
    if res.exists():
        res[0].delete()
