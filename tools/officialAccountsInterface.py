import requests
import json
import patients.models as patients_models
import patients.dao as patients_dao
import scales.models as scales_models
import scales.dao as scales_dao
# 公众号数据转移处理脚本

# 公众号数据查询接口
def get_patient_data(patient_id, start_date=None, end_date=None):
    if start_date is None or end_date is None:
        url = "http://www.braintechnet.cn/port.php?r=scale&patient_id="+str(patient_id)
    else:
        url = "http://www.braintechnet.cn/port.php?r=scale&patient_id="+str(patient_id)+"&start_date="+str(start_date)+"&end_date="+str(end_date)
    ret = requests.get(url)
    if ret.status_code == 200:
        patient_data = json.loads(ret.text)
        return patient_data
    else:
        patient_data = False
        return patient_data


### main
patient_id = 411
start_data = "2021-01-31"
end_date = "2021-01-31"
patient_session_id=1172
patient_data = get_patient_data(patient_id,start_data,end_date)
if patient_data is False:
    print("参数错误")

# scale_id：公众号中的量表流水id
scale_id = patient_data['data']['scale_id']
print("scale_id: "+str(scale_id))

# base_info：对应d_patient_detail和d_patient_base_info中的数据
base_info = patient_data['data']['base_info']
print("base_info: "+str(base_info))
# 先判断是否存在这个人，如果存在则证明其之前的诊断已在库中，不需要填充base_info，若不存在，则此条记录为初扫,需要新建base_info插入
# patient_pre = patients_models.DPatientDetail.object.filter(id=patient_id)[0]
# if patient_pre is None:
#     BPatientBaseInfo_object = patients_models.BPatientBaseInfo(name=base_info['name'],sex=base_info['sex'],birth_date=base_info['birth_date'],
#                                                         nation=base_info['nation'],doctor=2,create_time=end_date,update_time=end_date,
#                                                         diagnosis=0)
#     patients_dao.add_base_info(BPatientBaseInfo_object)
# # 插入d_patient_detail表
# DPatientDetail_object = patients_models.DPatientDetail()
# patients_dao.add_patient_detail(DPatientDetail_object)



# basic_information_family：对应r_patient_basic_information_family表数据
basic_information_family = patient_data['data']['basic_information_family']
print("basic_information_family: "+str(basic_information_family))

# basic_information_study：对应r_patient_basic_information_study表数据
basic_information_study = patient_data['data']['basic_information_study']
print("basic_information_study: "+str(basic_information_study))

# basic_information_health：对应r_patient_basic_information_health表数据
basic_information_health = patient_data['data']['basic_information_health']
print("basic_information_health: "+str(basic_information_health))

# basic_information_abuse：对应r_patient_basic_information_abuse表数据
basic_information_abuse = patient_data['data']['basic_information_abuse']
print("basic_information_abuse: "+str(basic_information_abuse))

# basic_information_other：对应r_patient_basic_information_other表数据
basic_information_other = patient_data['data']['basic_information_other']
print("basic_information_other: "+str(basic_information_other))

# scale_handy：利手量表
scale_handy = patient_data['data']['scale_handy']
print("scale_handy: "+str(scale_handy))

# scale_handy_duration：利手量表答题时间（array格式）
scale_handy_duration = patient_data['data']['scale_handy_duration']
print("scale_handy_duration: "+str(scale_handy_duration))

# scale_ocd：耶鲁布朗强迫症严重程度标准量表
scale_ocd = patient_data['data']['scale_ocd']
print("scale_ocd: "+str(scale_ocd))

# scale_ocd_duration：答题时间
scale_ocd_duration = patient_data['data']['scale_ocd_duration']
print("scale_ocd_duration: "+str(scale_ocd_duration))

# scale_suicidal：自杀量表
scale_suicidal = patient_data['data']['scale_suicidal']
print("scale_suicidal: "+str(scale_suicidal))

# scale_suicidal_duration：答题时间
scale_suicidal_duration = patient_data['data']['scale_suicidal_duration']
print("scale_suicidal_duration: "+str(scale_suicidal_duration))

# scale_manic： 躁狂症
scale_manic = patient_data['data']['scale_manic']
print("scale_manic: "+str(scale_manic))

# scale_manic_duration：答题时间
scale_manic_duration = patient_data['data']['scale_manic_duration']
print("scale_manic_duration: "+str(scale_manic_duration))

# scale_happiness：斯奈斯和汉密尔顿快乐量表
scale_happiness = patient_data['data']['scale_happiness']
print("scale_happiness: "+str(scale_happiness))

# scale_happiness_duration：答题时间
scale_happiness_duration = patient_data['data']['scale_happiness_duration']
print("scale_happiness_duration: "+str(scale_happiness_duration))

# scale_pleasure：快感体验能力量表表
scale_pleasure = patient_data['data']['scale_pleasure']
print("scale_pleasure: "+str(scale_pleasure))

# scale_pleasure_duration：答题时间
scale_pleasure_duration = patient_data['data']['scale_pleasure_duration']
print("scale_pleasure_duration: "+str(scale_pleasure_duration))

# scale_growth：儿童成长经历
scale_growth = patient_data['data']['scale_growth']
print("scale_growth: "+str(scale_growth))

# scale_growth_duration：答题时间
scale_growth_duration = patient_data['data']['scale_growth_duration']
print("scale_growth_duration: "+str(scale_growth_duration))

# scale_cerq：认知情绪调节
scale_cerq = patient_data['data']['scale_cerq']
print("scale_cerq: "+str(scale_cerq))

# scale_cerq_duration：答题时间
scale_cerq_duration = patient_data['data']['scale_cerq_duration']
print("scale_cerq_duration: "+str(scale_cerq_duration))

# scale_asles：青少年生活事件
scale_asles = patient_data['data']['scale_asles']
print("scale_asles: "+str(scale_asles))

# scale_asles_duration：答题时间
scale_asles_duration = patient_data['data']['scale_asles_duration']
print("scale_asles_duration: "+str(scale_asles_duration))

# scale_embu：简式父母
scale_embu = patient_data['data']['scale_embu']
print("scale_embu: "+str(scale_embu))

# scale_embu_duration：答题时间
scale_embu_duration = patient_data['data']['scale_embu_duration']
print("scale_embu_duration: "+str(scale_embu_duration))

# scale_atq：自动思维
scale_atq = patient_data['data']['scale_atq']
print("scale_atq: "+str(scale_atq))



# scale_atq_duration：答题时间
scale_atq_duration = patient_data['data']['scale_atq_duration']
print("scale_atq_duration: "+str(scale_atq_duration))

# scale_phq：抑郁症
scale_phq = patient_data['data']['scale_phq']
print("scale_phq: "+str(scale_phq))
phq_pre = scales_models.RPatientPhq.objects.filter(patient_session_id=patient_session_id).first()
if phq_pre is not None:
    phq_pre.delete()
if scale_phq is not None:
    RPatientPhq_object = scales_models.RPatientPhq(patient_session_id=patient_session_id,scale_id=29,question1_answer=scale_phq['question1_answer'],
    question2_answer=scale_phq['question2_answer'],question3_answer=scale_phq['question3_answer'],question4_answer=scale_phq['question4_answer'],
    question5_answer=scale_phq['question5_answer'],question6_answer=scale_phq['question6_answer'],question7_answer=scale_phq['question7_answer'],
    question8_answer=scale_phq['question8_answer'],question9_answer=scale_phq['question9_answer'],
    total_score=scale_phq['total_score'],doctor_id=2,create_time=end_date,update_time=end_date)
    scales_dao.add_Phq_database(RPatientPhq_object)


# scale_phq_duration：答题时间
scale_phq_duration = patient_data['data']['scale_phq_duration']
print("scale_phq_duration: "+str(scale_phq_duration))

# scale_gad：gad-7
scale_gad = patient_data['data']['scale_gad']
print("scale_gad: "+str(scale_gad))
gad_pre = scales_models.RPatientGad.objects.filter(patient_session_id=patient_session_id).first()
if gad_pre is not None:
    gad_pre.delete()
if scale_gad is not None:
    RPatientGad_object = scales_models.RPatientGad(patient_session_id=patient_session_id,scale_id=30,question1_answer=scale_gad['question1_answer'],
    question2_answer=scale_gad['question2_answer'],question3_answer=scale_gad['question3_answer'],question4_answer=scale_gad['question4_answer'],
    question5_answer=scale_gad['question5_answer'],question6_answer=scale_gad['question6_answer'],question7_answer=scale_gad['question7_answer'],
                                                             total_score=scale_gad['total_score'],doctor_id=2,create_time=end_date,update_time=end_date)
    scales_dao.add_Gad_database(RPatientGad_object)


# scale_gad_duration：答题时间
scale_gad_duration = patient_data['data']['scale_gad_duration']
print("scale_gad_duration: "+str(scale_gad_duration))

# scale_insomnia：失眠
scale_insomnia = patient_data['data']['scale_insomnia']
print("scale_insomnia: "+str(scale_insomnia))
insomnia_pre = scales_models.RPatientInsomnia.objects.filter(patient_session_id=patient_session_id).first()
if insomnia_pre is not None:
    insomnia_pre.delete()
if scale_insomnia is not None:
    RPatientInsomnia_object = scales_models.RPatientInsomnia(patient_session_id=patient_session_id,scale_id=31,question1_answer=scale_insomnia['question1_answer'],
    question2_answer=scale_insomnia['question2_answer'],question3_answer=scale_insomnia['question3_answer'],question4_answer=scale_insomnia['question4_answer'],
    question5_answer=scale_insomnia['question5_answer'],question6_answer=scale_insomnia['question6_answer'],question7_answer=scale_insomnia['question7_answer'],
                                                             total_score=scale_insomnia['total_score'],doctor_id=2,create_time=end_date,update_time=end_date)
    scales_dao.add_Insomnia_database(RPatientInsomnia_object)



# scale_insomnia_duration：答题时间
scale_insomnia_duration = patient_data['data']['scale_insomnia_duration']
print("scale_insomnia_duration: "+str(scale_insomnia_duration))

# scale_pss：压力量表
scale_pss = patient_data['data']['scale_pss']
print("scale_pss: "+str(scale_pss))
pss_pre = scales_models.RPatientPss.objects.filter(patient_session_id=patient_session_id).first()
if pss_pre is not None:
    pss_pre.delete()
if scale_pss is not None:
    RPatientPss_object = scales_models.RPatientPss(patient_session_id=patient_session_id,scale_id=32,question1_answer=scale_pss['question1_answer'],
    question2_answer=scale_pss['question2_answer'],question3_answer=scale_pss['question3_answer'],question4_answer=6-scale_pss['question4_answer'],
    question5_answer=6-scale_pss['question5_answer'],question6_answer=6-scale_pss['question6_answer'],question7_answer=6-scale_pss['question7_answer'],
    question8_answer=scale_pss['question8_answer'],question9_answer=6-scale_pss['question9_answer'],question10_answer=6-scale_pss['question10_answer'],
    question11_answer=scale_pss['question11_answer'],question12_answer=6-scale_pss['question12_answer'],question13_answer=6-scale_pss['question13_answer'],
    question14_answer=scale_pss['question14_answer'],total_score=scale_pss['total_score'],doctor_id=2,create_time=end_date,update_time=end_date)
    scales_dao.add_pss_database(RPatientPss_object)


# scale_pss_duration：答题时间
scale_pss_duration = patient_data['data']['scale_pss_duration']
print("scale_pss_duration: "+str(scale_pss_duration))
