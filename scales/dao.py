from django.shortcuts import render, redirect
import json
import tools.insertCascadeCheck as tools_insertCascadeCheck
import tools.calculatingScores as tools_calculatingScores
import tools.Utils as tools_utils
import scales.models as scales_models
import patients.models as patient_models
import tools.config as tools_config

################### 自定义update方法 ####################
################### 自定义update方法 ####################
################### 自定义update方法 ####################

# 这里不能使用update方法，django中使用自带update方法无法更新带有auto_now的时间字段
# 更新r_patient_scales中的state状态
def update_rscales_state(patient_session_id,scale_id):
    rPatientScales = scales_models.RPatientScales.objects.filter(patient_session_id = patient_session_id, scale_id=scale_id)[0]
    rPatientScales.state = 1
    rPatientScales.save()



################### insert方法部分 #####################
################### insert方法部分 #####################
################### insert方法部分 #####################
################### insert方法部分 #####################


#######################################################################################
########################## add_hamd_database 可以作为dao的样例 #########################
#######################################################################################

# 汉密尔顿焦虑量表
def add_hamd_database(rPatientHAMD17):
    # 计算量表得分
    rPatientHAMD17.total_score,object_flag = tools_calculatingScores.HAMD17_total_score(rPatientHAMD17)
    # 量表得分检验
    tools_utils.object_judgment(object_flag)
    # 插入前的级联检验
    tools_insertCascadeCheck.insert_hama_check(rPatientHAMD17)
    # 插入数据库
    rPatientHAMD17.save()
    # 修改r_patient_scales表中state状态
    update_rscales_state(rPatientHAMD17.patient_session_id, rPatientHAMD17.scale_id)



# 33 项轻躁狂症状清单
def add_manicsymptom_database(rPatientManicsymptom):
    # 存进数据库
    rPatientManicsymptom.total_score, object_flag = tools_calculatingScores.ManicSymptom_total_score(rPatientManicsymptom)
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
    rPatienthappiness.total_score,object_flag = tools_calculatingScores.happiness_total_score(rPatienthappiness)
    tools_utils.object_judgment(object_flag)
    # 插入前的级联检验
    tools_insertCascadeCheck.insert_hapiness_check(rPatienthappiness)
    # 插入数据库
    rPatienthappiness.save()
    # 修改r_patient_scales表中state状态
    update_rscales_state(rPatienthappiness.patient_session_id, rPatienthappiness.scale_id)

def add_chinesehandle_database(rPatientChineseHandy):
    rPatientChineseHandy.result,object_flag = tools_calculatingScores.Handy_total_score(rPatientChineseHandy)
    tools_utils.object_judgment(object_flag)
    # 插入前的级联检验
    tools_insertCascadeCheck.insert_handle_check(rPatientChineseHandy)
    # 插入数据库
    rPatientChineseHandy.save()
    # 修改r_patient_scales表中state状态
    update_rscales_state(rPatientChineseHandy.patient_session_id, rPatientChineseHandy.scale_id)

def add_information_study_database(rPatientBasicInformationStudy):
    # 插入前的级联检验
    tools_insertCascadeCheck.insert_information_study_check(rPatientBasicInformationStudy)
    # 插入数据库
    rPatientBasicInformationStudy.save()
    # 修改r_patient_scales表中state状态
    update_rscales_state(rPatientBasicInformationStudy.patient_session_id, rPatientBasicInformationStudy.scale_id)

#############################################################################################
#############################################################################################syh

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
    rPatientPleasure.exception_score, rPatientPleasure.consume_score ,object_flag= tools_calculatingScores.pleasure_total_score(rPatientPleasure)
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

def add_bprs_database(rPatientbprs):
    rPatientbprs.total_score,object_flag = tools_calculatingScores.Bprs_total_score(rPatientbprs)
    tools_utils.object_judgment(object_flag)
    # 插入前的级联检验
    tools_insertCascadeCheck.insert_bprs_check(rPatientbprs)
    # 插入数据库
    rPatientbprs.save()
    # 修改r_patient_scales表中state状态
    update_rscales_state(rPatientbprs.patient_session_id, rPatientbprs.scale_id)

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
#zrq------------------------------------

def add_hama_database(rPatientHama):
    rPatientHama.total_score,object_flag = tools_calculatingScores.HAMA_total_score(rPatientHama)
    tools_utils.object_judgment(object_flag)
    # 插入前的级联检验
    tools_insertCascadeCheck.insert_hama_check(rPatientHama)
    # 插入数据库
    rPatientHama.save()
    # 修改r_patient_scales表中state状态
    update_rscales_state(rPatientHama.patient_session_id, rPatientHama.scale_id)

def add_abuse_database(rPatientBasicInformationAbuse):
    # 插入前的级联检验
    tools_insertCascadeCheck.insert_information_abuse_check(rPatientBasicInformationAbuse)
    # 插入数据库
    rPatientBasicInformationAbuse.save()
    # 修改r_patient_scales表中state状态
    update_rscales_state(rPatientBasicInformationAbuse.patient_session_id, rPatientBasicInformationAbuse.scale_id)

def add_growth_database(rPatientGrowth):
    rPatientGrowth.emotion_abuse_score,rPatientGrowth.body_abuse_score,rPatientGrowth.sex_abuse_score,rPatientGrowth.emotion_ignore_score,\
    rPatientGrowth.body_ignore_score,object_flag = tools_calculatingScores.growth_total_score(rPatientGrowth)
    tools_utils.object_judgment(object_flag)
    # 插入前的级联检验
    tools_insertCascadeCheck.insert_growth_check(rPatientGrowth)
    # 插入数据库
    rPatientGrowth.save()
    # 修改r_patient_scales表中state状态
    update_rscales_state(rPatientGrowth.patient_session_id, rPatientGrowth.scale_id)

def add_adolescent_events_database(rPatientAdolescentEvents):
    rPatientAdolescentEvents.total_score, object_flag = tools_calculatingScores.AdolescentEvents_total_score(rPatientAdolescentEvents)
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

def add_ymrs_database(rPatientYmrs):
    rPatientYmrs.total_score, object_flag = tools_calculatingScores.YMRS_total_score(rPatientYmrs)
    tools_utils.object_judgment(object_flag)
    # 插入前的级联检验
    tools_insertCascadeCheck.insert_ymrs_check(rPatientYmrs)
    # 插入数据库
    rPatientYmrs.save()
    # 修改r_patient_scales表中state状态
    update_rscales_state(rPatientYmrs.patient_session_id, rPatientYmrs.scale_id)

def add_sembu_database(rPatientSembu):
    rPatientSembu.refusal_mother,rPatientSembu.refusal_father,rPatientSembu.emotional_warmth_mother,\
    rPatientSembu.emotional_warmth_father,rPatientSembu.overprotection_mother,rPatientSembu.overprotection_father, \
    object_flag=tools_calculatingScores.SEmbu_total_score(rPatientSembu)

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
    rpatientsuicidal.total_score_lastweek,rpatientsuicidal.total_score_mostdpressed, object_flag = tools_calculatingScores.Suicidal_total_score(rpatientsuicidal)
    tools_utils.object_judgment(object_flag)
    # 插入前的级联检验
    tools_insertCascadeCheck.insert_suicide_check(rpatientsuicidal)
    # 插入数据库
    rpatientsuicidal.save()
    # 修改r_patient_scales表中state状态
    update_rscales_state(rpatientsuicidal.patient_session_id, rpatientsuicidal.scale_id)


def dao_add_ybo(rpatientybobsessiontable):
    # 计算总分的函数写在这
    rpatientybobsessiontable.total_score, object_flag = tools_calculatingScores.YBO_total_score(rpatientybobsessiontable)
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

# patient base info 表
def get_patient_base_info_family_byPatientDetailId(patient_detail_id):
    patient_base_info_family = scales_models.RPatientBasicInformationFamily.objects.filter(patient_session=patient_detail_id)[0]
    return patient_base_info_family


def get_patient_base_info_study_byPatientDetailId(patient_detail_id):
    patient_base_info_study = scales_models.RPatientBasicInformationStudy.objects.filter(patient_session=patient_detail_id)[0]
    return patient_base_info_study


def get_patient_base_info_health_byPatientDetailId(patient_detail_id):
    patient_base_info_health = scales_models.RPatientBasicInformationHealth.objects.filter(patient_session=patient_detail_id)[0]
    return patient_base_info_health


def get_patient_base_info_abuse_byPatientDetailId(patient_detail_id):
    patient_base_info_abuse = scales_models.RPatientBasicInformationAbuse.objects.filter(patient_session=patient_detail_id)[0]
    return patient_base_info_abuse


def get_patient_base_info_other_byPatientDetailId(patient_detail_id):
    patient_base_info_other = scales_models.RPatientBasicInformationOther.objects.filter(patient_session=patient_detail_id)[0]
    return patient_base_info_other


# 中国人利手量表
def get_patient_handy_byPatientDetailId(patient_detail_id):
    patient_handy = scales_models.RPatientChineseHandy.objects.filter(patient_session=patient_detail_id)[0]
    return patient_handy


# 汉密尔顿抑郁量表HAMD17
def get_patient_HAMD17_byPatientDetailId(patient_detail_id):
    patient_HAMD17 = scales_models.RPatientHamd17.objects.filter(patient_session=patient_detail_id)[0]
    return patient_HAMD17


# 汉密尔顿焦虑量表HAMA
def get_patient_HAMA_byPatientDetailId(patient_detail_id):
    patient_HAMA = scales_models.RPatientHAMA.objects.filter(patient_session=patient_detail_id)[0]
    return patient_HAMA


# 杨氏躁狂量表YMRS
def get_patient_YMRS_byPatientDetailId(patient_detail_id):
    patient_YMRS = scales_models.RPatientYmrs.objects.filter(patient_session=patient_detail_id)[0]
    return patient_YMRS


# BPRS简明精神量表
def get_patient_BPRS_byPatientDetailId(patient_detail_id):
    patient_BPRS = scales_models.RPatientBprs.objects.filter(patient_session=patient_detail_id)[0]
    return patient_BPRS


# 耶鲁布朗
def get_patient_YBO_byPatientDetailId(patient_detail_id):
    patient_YBO = scales_models.RPatientYbobsessiontable.objects.filter(patient_session=patient_detail_id)[0]
    return patient_YBO


# 自杀意念及行为史
def get_patient_suicidal_byPatientDetailId(patient_detail_id):
    patient_suicidal = scales_models.RPatientSuicidal.objects.filter(patient_session=patient_detail_id)[0]
    return patient_suicidal


# 33项轻躁狂
def get_patient_manicSymptom_byPatientDetailId(patient_detail_id):
    patient_manicSymptom = scales_models.RPatientManicsymptom.objects.filter(patient_session=patient_detail_id)[0]
    return patient_manicSymptom


# 斯奈斯和汉密尔顿快乐
def get_patient_happiness_byPatientDetailId(patient_detail_id):
    patient_happiness = scales_models.RPatientHappiness.objects.filter(patient_session=patient_detail_id)[0]
    return patient_happiness


# 快感体验能力量表
def get_patient_pleasure_byPatientDetailId(patient_detail_id):
    patient_pleasure = scales_models.RPatientPleasure.objects.filter(patient_session=patient_detail_id)[0]

    return patient_pleasure

# 儿童期（16岁前）成长经历
def get_patient_growth_byPatientDetailId(patient_detail_id):
    patient_growth = scales_models.RPatientGrowth.objects.filter(patient_session=patient_detail_id)[0]
    return patient_growth


# 青少年生活事件量表
def get_patient_adolescent_byPatientDetailId(patient_detail_id):
    patient_adolescent = scales_models.RPatientAdolescentEvents.objects.filter(patient_session=patient_detail_id)[0]
    return patient_adolescent


# 认知情绪调节量表
def get_patient_cognitive_byPatientDetailId(patient_detail_id):
    patient_cognitive = scales_models.RPatientCognitiveEmotion.objects.filter(patient_session=patient_detail_id)[0]
    return patient_cognitive


# 简式父母养育方式问卷表
def get_patient_SEmbu_byPatientDetailId(patient_detail_id):
    patient_SEmbu = scales_models.RPatientSembu.objects.filter(patient_session=patient_detail_id)[0]
    return patient_SEmbu


# 自动思维问卷表
def get_patient_ATQ_byPatientDetailId(patient_detail_id):
    patient_ATQ = scales_models.RPatientAtq.objects.filter(patient_session=patient_detail_id)[0]
    return patient_ATQ


# 威斯康星WCST
def get_patient_wcst_byPatientDetailId(patient_detail_id):
    patient_wcst = scales_models.RPatientWcst.objects.filter(patient_session=patient_detail_id)[0]
    return patient_wcst


# 重复成套性神经心理状态测验系统RBANS
def get_patient_rbans_byPatientDetailId(patient_detail_id):
    patient_rbans = scales_models.RPatientRbans.objects.filter(patient_session=patient_detail_id)[0]
    return patient_rbans


# 面孔情绪感知能力测试
def get_patient_fept_byPatientDetailId(patient_detail_id):
    patient_fept = scales_models.RPatientFept.objects.filter(patient_session=patient_detail_id)[0]
    return patient_fept


# 语音情绪感知能力测试VEPT
def get_patient_vept_byPatientDetailId(patient_detail_id):
    patient_vept = scales_models.RPatientVept.objects.filter(patient_session=patient_detail_id)[0]
    return patient_vept

# 获取某个类别的量表未完成的最小值,都已经完成了，那么返回None
def get_min_unfinished_scale(do_scale_type,patient_session_id):
    res = scales_models.RPatientScales.objects.filter(scale__do_scale_type = do_scale_type,patient_session_id = patient_session_id, state = 0).order_by('scale_id')
    if res.count() == 0:
        return None
    return res[0].scale_id