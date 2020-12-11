from django.shortcuts import render, redirect
import json
import scales.dao as scales_dao
import scales.models as scales_models
import tools.config as tools_config
import patients.dao as patients_dao
import tools.Utils as tools_utils
# Create your views here.

'''
获取表单
'''

# 个人基本信息
def get_general_info_forms(request):
    patient_session_id = request.GET.get('patient_session_id')
    patient_id = request.GET.get('patient_id')
    redirect_url = get_redirect_url(patient_session_id,patient_id,tools_config.general_info_next_url,tools_config.general_info_type)
    return redirect(redirect_url)

# 他测总量表
def get_other_test_forms(request):
    patient_session_id = request.GET.get('patient_session_id')
    patient_id = request.GET.get('patient_id')
    redirect_url = get_redirect_url(patient_session_id,patient_id,tools_config.other_test_next_type_url,tools_config.other_test_type)
    return redirect(redirect_url)

# 自测总量表
def get_self_test_forms(request):
    patient_session_id = request.GET.get('patient_session_id')
    patient_id = request.GET.get('patient_id')
    redirect_url = get_redirect_url(patient_session_id,patient_id,tools_config.self_test_next_type_url,tools_config.self_test_type)
    return redirect(redirect_url)

# 认知测试总量表
def get_cognition_forms(request):
    patient_session_id = request.GET.get('patient_session_id')
    patient_id = request.GET.get('patient_id')
    redirect_url = get_redirect_url(patient_session_id,patient_id,tools_config.cognition_next_type_url,tools_config.cognition_type)
    return redirect(redirect_url)

# 进入四个选择项的界面，需要获取到各个量表类型他的list
def get_select_scales(request):
    patient_session_id = request.GET.get('patient_session_id')
    patient_id = request.GET.get('patient_id')
    patient = patients_dao.get_base_info_byPK(patient_id)
    patient_detail = patients_dao.get_patient_detail_last_byPatientId(patient_id)
    # 获取各个scaleType的list信息
    scales_list = patients_dao.judgment_scales(patient_session_id)
    generalinfo_scale_list, other_test_scale_list, self_test_scale_list, cognition_scale_list = patients_dao.judgment_do_scales(scales_list)
    return render(request, 'select_scales.html', {'patient': patient,
                                                  'patient_id': patient.id,
                                                  'patient_session_id': patient_session_id,
                                                  "username": request.session.get('username'),
                                                  'patient_detail':patient_detail,
                                                  "generalinfo_scale_size": len(generalinfo_scale_list),
                                                  "other_test_scale_size": len(other_test_scale_list),
                                                  "self_test_scale_size": len(self_test_scale_list),
                                                  "cognition_scale_size": len(cognition_scale_list),
                                                  })


# 获取家庭情况表单
def get_family_form(request):
    # 由于要传入生日信息，因此这里需要获取一些下一页面所需要的值
    patient_id = request.GET.get('patient_id')
    base_info = patients_dao.get_base_info_byPK(patient_id)
    age = tools_utils.calculate_age(str(base_info.birth_date))
    nation_list = patients_dao.get_DEthnicity_all()
    return render(request,'nbh/add_family.html',{'patient_session_id':request.GET.get('patient_session_id'),
                                                 'patient_id':request.GET.get('patient_id'),
                                                 'username':request.session.get('username'),
                                                 'base_info':base_info,
                                                 'age':age,
                                                 'nation_list':nation_list})

# 获取学习情况表单
def get_study_form(request):
    return render(request,'nbh/add_study.html',{'patient_session_id':request.GET.get('patient_session_id'),
                                                 'patient_id':request.GET.get('patient_id'),
                                                 'username':request.session.get('username'),})

# 获取健康情况表单
def get_health_form(request):
    return render(request,'nbh/add_health.html',{'patient_session_id':request.GET.get('patient_session_id'),
                                                 'patient_id':request.GET.get('patient_id'),
                                                 'username':request.session.get('username'),})
# 获取物质依赖表单
def get_abuse_form(request):
    return render(request,'nbh/add_abuse.html',{'patient_session_id':request.GET.get('patient_session_id'),
                                                 'patient_id':request.GET.get('patient_id'),
                                                 'username':request.session.get('username'),})

# 获取其他资料表单
def get_other_form(request):
    return render(request,'nbh/add_other.html',{'patient_session_id':request.GET.get('patient_session_id'),
                                                 'patient_id':request.GET.get('patient_id'),
                                                 'username':request.session.get('username'),})

# 获取利手量表表单
def get_chi_form(request):
    return render(request,'nbh/add_chi.html',{'patient_session_id':request.GET.get('patient_session_id'),
                                                 'patient_id':request.GET.get('patient_id'),
                                                 'username':request.session.get('username'),})

#获取病人病史表单
def get_patient_medical_history_form(request):
    return render(request,'nbh/add_patient_medical_history.html',{'patient_session_id':request.GET.get('patient_session_id'),
                                                 'patient_id':request.GET.get('patient_id'),
                                                 'username':request.session.get('username'),})

# 获取耶鲁布朗表单
def get_ybocs_form(request):
    return render(request,'nbh/add_ybocs.html',{'patient_session_id':request.GET.get('patient_session_id'),
                                                 'patient_id':request.GET.get('patient_id'),
                                                 'username':request.session.get('username'),})
# 获取自杀量表表单
def get_bss_form(request):
    return render(request,'nbh/add_bss.html',{'patient_session_id':request.GET.get('patient_session_id'),
                                                 'patient_id':request.GET.get('patient_id'),
                                                 'username':request.session.get('username'),})

# 获取33项轻躁狂表单
def get_hcl_33_form(request):
    return render(request,'nbh/add_hcl_33.html',{'patient_session_id':request.GET.get('patient_session_id'),
                                                 'patient_id':request.GET.get('patient_id'),
                                                 'username':request.session.get('username'),})
# 获取斯奈斯快乐量表
def get_shaps_form(request):
    return render(request,'nbh/add_shaps.html',{'patient_session_id':request.GET.get('patient_session_id'),
                                                 'patient_id':request.GET.get('patient_id'),
                                                 'username':request.session.get('username'),})
# 获取快感体验能力表单
def get_teps_form(request):
    return render(request,'nbh/add_teps.html',{'patient_session_id':request.GET.get('patient_session_id'),
                                                 'patient_id':request.GET.get('patient_id'),
                                                 'username':request.session.get('username'),})
# 获取儿童期成长经历表单
def get_ctq_sf_form(request):
    return render(request,'nbh/add_ctq_sf.html',{'patient_session_id':request.GET.get('patient_session_id'),
                                                 'patient_id':request.GET.get('patient_id'),
                                                 'username':request.session.get('username'),})
# 获取认知情绪调节表单
def get_cerq_c_form(request):
    return render(request,'nbh/add_cerq_c.html',{'patient_session_id':request.GET.get('patient_session_id'),
                                                 'patient_id':request.GET.get('patient_id'),
                                                 'username':request.session.get('username'),})
# 获取青少年生活事件表单
def get_aslec_form(request):
    return render(request,'nbh/add_aslec.html',{'patient_session_id':request.GET.get('patient_session_id'),
                                                 'patient_id':request.GET.get('patient_id'),
                                                 'username':request.session.get('username'),})
# 获取简氏父母教育表单
def get_s_embu_form(request):
    return render(request,'nbh/add_s_embu.html',{'patient_session_id':request.GET.get('patient_session_id'),
                                                 'patient_id':request.GET.get('patient_id'),
                                                 'username':request.session.get('username'),})
# 获取自动思维问卷表单
def get_atq_form(request):
    return render(request,'nbh/add_atq.html',{'patient_session_id':request.GET.get('patient_session_id'),
                                                 'patient_id':request.GET.get('patient_id'),

                                                 'username':request.session.get('username'),})
# 获取汉密尔顿抑郁表单
def get_hamd_17_form(request):
    return render(request,'nbh/add_hamd_17.html',{'patient_session_id':request.GET.get('patient_session_id'),
                                                 'patient_id':request.GET.get('patient_id'),
                                                 'username':request.session.get('username'),})
# 获取汉密尔顿焦虑
def get_hama_form(request):
    return render(request,'nbh/add_hama.html',{'patient_session_id':request.GET.get('patient_session_id'),
                                                 'patient_id':request.GET.get('patient_id'),
                                                 'username':request.session.get('username'),})
# 获取杨氏躁狂
def get_ymrs_form(request):
    return render(request,'nbh/add_ymrs.html',{'patient_session_id':request.GET.get('patient_session_id'),
                                                 'patient_id':request.GET.get('patient_id'),
                                                 'username':request.session.get('username'),})
# 获取简明精神病表单
def get_bprs_form(request):
    return render(request,'nbh/add_bprs.html',{'patient_session_id':request.GET.get('patient_session_id'),
                                                 'patient_id':request.GET.get('patient_id'),
                                                 'username':request.session.get('username'),})
# 获取威斯康辛表单
def get_wcst_form(request):
    return render(request,'nbh/add_wcst.html',{'patient_session_id':request.GET.get('patient_session_id'),
                                                 'patient_id':request.GET.get('patient_id'),
                                                 'username':request.session.get('username'),})
# 获取重复成套性测试表单
def get_rbans_form(request):
    return render(request,'nbh/add_rbans.html',{'patient_session_id':request.GET.get('patient_session_id'),
                                                 'patient_id':request.GET.get('patient_id'),
                                                 'username':request.session.get('username'),})
# 获取面孔认知表单
def get_fept_form(request):
    return render(request,'nbh/add_fept.html',{'patient_session_id':request.GET.get('patient_session_id'),
                                                 'patient_id':request.GET.get('patient_id'),
                                                 'username':request.session.get('username'),})
# 获取语音认知表单
def get_vept_form(request):
    return render(request,'nbh/add_vept.html',{'patient_session_id':request.GET.get('patient_session_id'),
                                                 'patient_id':request.GET.get('patient_id'),
                                                 'username':request.session.get('username'),})
'''
量表具体操作
'''
#病人病史表
def add_patient_medical_history(request):
    if request.POST:
        patient_session_id = request.GET.get('patient_session_id')
        scale_id = 1
        doctor_id = request.session.get('doctor_id')
        rPatientMedicalHistory = scales_models.RPatientMedicalHistory(patient_session_id=patient_session_id, scale_id=scale_id,
                                                        doctor_id=doctor_id)
        rPatientDrugsInformation = scales_models.RPatientDrugsInformation(patient_session_id=patient_session_id, scale_id=scale_id,
                                                            doctor_id=doctor_id)
        for key in request.POST.keys():
            if hasattr(rPatientMedicalHistory, key):
                val = request.POST.get(key)
                if val is None:
                    val = ''
                setattr(rPatientMedicalHistory, key, val)
            else:
                pos = key.rfind('_')
                st = key[:pos]
                st2 = key[pos + 1]
                if hasattr(rPatientDrugsInformation, st):
                    val = request.POST.get(key)
                    if val is None:
                        val = ''
                    setattr(rPatientDrugsInformation, st, val)
                    if st == 'note':
                        scales_dao.add_drugs_information(rPatientDrugsInformation)
                        rPatientDrugsInformation = scales_models.RPatientDrugsInformation(
                            patient_session_id=patient_session_id, scale_id=scale_id,
                            doctor_id=doctor_id)


    # 添加数据库
    scales_dao.add_medical_history(rPatientMedicalHistory)
    # 页面跳转
    patient_id = request.GET.get('patient_id')
    redirect_url = get_redirect_url(patient_session_id,patient_id,tools_config.self_test_next_type_url,tools_config.self_test_type)
    return redirect(redirect_url)


def add_ybo(request):
    if request.POST:
        patient_session_id = request.GET.get('patient_session_id')
        doctor_id = request.session.get('doctor_id')
        scale_id = tools_config.ybocs
        rpatientybobsessiontable = scales_models.RPatientYbobsessiontable(patient_session_id=patient_session_id,
                                                            doctor_id=doctor_id,
                                                            scale_id=scale_id)
        for key in request.POST.keys():
            if hasattr(rpatientybobsessiontable, key):
                setattr(rpatientybobsessiontable, key, request.POST.get(key))
    # 添加数据库
    scales_dao.dao_add_ybo(rpatientybobsessiontable)
    # 页面跳转
    patient_id = request.GET.get('patient_id')
    redirect_url = get_redirect_url(patient_session_id,patient_id,tools_config.self_test_next_type_url,tools_config.self_test_type)
    return redirect(redirect_url)


def add_suicide(request):
    if request.POST:
        patient_session_id = request.GET.get('patient_session_id')
        doctor_id = request.session.get('doctor_id')
        scales_id = tools_config.bss
        rpatientsuicidal = scales_models.RPatientSuicidal(patient_session_id=patient_session_id,
                                            doctor_id=doctor_id,
                                            scale_id=scales_id)

        for key in request.POST.keys():
            if hasattr(rpatientsuicidal, key):
                setattr(rpatientsuicidal, key, request.POST.get(key))
    # 保存数据库
    scales_dao.dao_add_suicide(rpatientsuicidal)
    patient_id = request.GET.get('patient_id')
    redirect_url = get_redirect_url(patient_session_id, patient_id, tools_config.self_test_next_type_url,tools_config.self_test_type)
    return redirect(redirect_url)


def add_family_info(request):
    if request.POST:
        doctor_id = request.session.get('doctor_id')
        patient_session_id = request.GET.get('patient_session_id')
        scales_id = tools_config.information_family
        dpatientdetail = scales_models.DPatientDetail.objects.filter(pk=patient_session_id).first()
        patient_basic_info_family = scales_models.RPatientBasicInformationFamily(patient_session=dpatientdetail,
                                                                   doctor_id=doctor_id,
                                                                   scale_id=scales_id)

        form_list = [dpatientdetail, patient_basic_info_family]
        # 有些字段传回来的是‘’，不能自动转换成int或者Null
        for key in request.POST.keys():
            for form in form_list:
                if hasattr(form, key):
                    if request.POST.get(key) == '':
                        setattr(form, key, None)
                    else:
                        setattr(form, key, request.POST.get(key))

        patients_dao.add_patient_detail(dpatientdetail)

    scales_dao.dao_add_family_info(patient_basic_info_family)
    patient_id = request.GET.get('patient_id')
    redirect_url = get_redirect_url(patient_session_id,patient_id,tools_config.general_info_next_url,tools_config.general_info_type)
    return redirect(redirect_url)

#########################################################
def patient_basic_information(request):
    return render(request, 'patient_basic_information.html')


def add_hamd(request):
    patient_session_id = request.GET.get('patient_session_id')
    scale_id = tools_config.hamd_17
    doctor_id = request.session.get('doctor_id')
    # 创建一个对象
    rPatientHAMD17 = scales_models.RPatientHamd17(patient_session_id=patient_session_id, scale_id=scale_id, doctor_id=doctor_id)
    # 通过field的方式进行数据的传递，注意，需要保证form表单中各项的名称与数据库中字段名称是名称相同
    fields_data = scales_models.RPatientHamd17._meta.fields
    data_dict = rPatientHAMD17.__dict__
    for ele in fields_data:
        data_dict[ele.name] = request.POST.get(ele.name)
    # 插入数据库
    scales_dao.add_hamd_database(rPatientHAMD17)
    patient_id = request.GET.get('patient_id')
    redirect_url = get_redirect_url(patient_session_id,patient_id,tools_config.other_test_next_type_url,tools_config.other_test_type)
    return redirect(redirect_url)

def add_information_study(request):
    patient_session_id = request.GET.get('patient_session_id')
    scale_id = tools_config.information_study
    doctor_id = request.session.get('doctor_id')
    # 创建一个对象情况
    rPatientBasicInformationStudy = scales_models.RPatientBasicInformationStudy(patient_session_id=patient_session_id, scale_id=scale_id, doctor_id=doctor_id)
    # 通过field的方式进行数据的传递，注意，需要保证form表单中各项的名称与数据库中字段名称是名称相同
    fields_data = scales_models.RPatientBasicInformationStudy._meta.fields
    data_dict = rPatientBasicInformationStudy.__dict__
    for ele in fields_data:
        data_dict[ele.name] = request.POST.get(ele.name)

    scales_dao.add_information_study_database(rPatientBasicInformationStudy)
    patient_id = request.GET.get('patient_id')
    redirect_url = get_redirect_url(patient_session_id,patient_id,tools_config.general_info_next_url,tools_config.general_info_type)
    return redirect(redirect_url)


def add_chinesehandle(request):
    patient_session_id = request.GET.get('patient_session_id')
    scale_id = tools_config.chi
    doctor_id = request.session.get('doctor_id')
    rPatientChineseHandy = scales_models.RPatientChineseHandy(patient_session_id=patient_session_id, scale_id=scale_id, doctor_id=doctor_id)
    # 通过field的方式进行数据的传递，注意，需要保证form表单中各项的名称与数据库中字段名称是名称相同
    fields_data = scales_models.RPatientChineseHandy._meta.fields
    data_dict = rPatientChineseHandy.__dict__
    result = 1
    for ele in fields_data:
        data_dict[ele.name] = request.POST.get(ele.name)

    scales_dao.add_chinesehandle_database(rPatientChineseHandy)
    patient_id = request.GET.get('patient_id')
    redirect_url = get_redirect_url(patient_session_id,patient_id,tools_config.general_info_next_url,tools_config.general_info_type)
    return redirect(redirect_url)



def add_manicsymptom(request):
    patient_session_id = request.GET.get('patient_session_id')
    scale_id = tools_config.hcl_33
    doctor_id = request.session.get('doctor_id')
    # 创建一个对象
    rPatientManicsymptom = scales_models.RPatientManicsymptom(patient_session_id=patient_session_id, scale_id=scale_id,
                                                doctor_id=doctor_id)
    # 通过field的方式进行数据的传递，注意，需要保证form表单中各项的名称与数据库中字段名称是名称相同
    fields_data = scales_models.RPatientManicsymptom._meta.fields
    data_dict = rPatientManicsymptom.__dict__
    for ele in fields_data:
        data_dict[ele.name] = request.POST.get(ele.name)

    if rPatientManicsymptom.question8 == '':
        rPatientManicsymptom.question8 = None
    scales_dao.add_manicsymptom_database(rPatientManicsymptom)
    patient_id = request.GET.get('patient_id')
    redirect_url = get_redirect_url(patient_session_id,patient_id,tools_config.self_test_next_type_url,tools_config.self_test_type)
    return redirect(redirect_url)


def add_happiness(request):
    patient_session_id = request.GET.get('patient_session_id')
    scale_id = tools_config.shaps
    doctor_id = request.session.get('doctor_id')
    rPatienthappiness = scales_models.RPatientHappiness(patient_session_id=patient_session_id, scale_id=scale_id,
                                          doctor_id=doctor_id)
    # 通过field的方式进行数据的传递，注意，需要保证form表单中各项的名称与数据库中字段名称是名称相同
    fields_data = scales_models.RPatientHappiness._meta.fields
    data_dict = rPatienthappiness.__dict__
    for ele in fields_data:
        data_dict[ele.name] = request.POST.get(ele.name)
    scales_dao.add_happiness_database(rPatienthappiness)
    patient_id = request.GET.get('patient_id')
    redirect_url = get_redirect_url(patient_session_id,patient_id,tools_config.self_test_next_type_url,tools_config.self_test_type)
    return redirect(redirect_url)


#########################################################
######################################################### syh

def add_cognitive_emotion(request):
    patient_session_id = request.GET.get('patient_session_id')
    scale_id = tools_config.cerq_c
    doctor_id = request.session.get('doctor_id')
    rPatientCognitiveEmotion = scales_models.RPatientCognitiveEmotion(patient_session_id=patient_session_id, scale_id=scale_id,
                                                        doctor_id=doctor_id)
    data = request.__dict__
    fields_data_ = scales_models.RPatientCognitiveEmotion._meta.fields
    data_dict = rPatientCognitiveEmotion.__dict__
    for ele in fields_data_:
        data_dict[ele.name] = request.POST.get(ele.name)

    scales_dao.add_cognitive_emotion_database(rPatientCognitiveEmotion)
    patient_id = request.GET.get('patient_id')
    redirect_url = get_redirect_url(patient_session_id,patient_id,tools_config.self_test_next_type_url,tools_config.self_test_type)
    return redirect(redirect_url)



def add_pleasure(request):
    patient_session_id = request.GET.get('patient_session_id')
    scale_id = tools_config.teps
    doctor_id = request.session.get('doctor_id')

    rPatientPleasure = scales_models.RPatientPleasure(patient_session_id=patient_session_id, scale_id=scale_id, doctor_id=doctor_id)
    data = request.__dict__
    fields_data_ = scales_models.RPatientPleasure._meta.fields
    data_dict = rPatientPleasure.__dict__
    for ele in fields_data_:
        data_dict[ele.name] = request.POST.get(ele.name)

    scales_dao.add_pleasure_database(rPatientPleasure)
    patient_id = request.GET.get('patient_id')
    redirect_url = get_redirect_url(patient_session_id,patient_id,tools_config.self_test_next_type_url,tools_config.self_test_type)
    return redirect(redirect_url)


def add_bprs(request):
    patient_session_id = request.GET.get('patient_session_id')
    scale_id = tools_config.bprs
    doctor_id = request.session.get('doctor_id')
    total_scores = 1
    rPatientbprs = scales_models.RPatientBprs(patient_session_id=patient_session_id, scale_id=scale_id, doctor_id=doctor_id)
    data = request.__dict__
    fields_data_ = scales_models.RPatientBprs._meta.fields
    data_dict = rPatientbprs.__dict__
    for ele in fields_data_:
        data_dict[ele.name] = request.POST.get(ele.name)
    scales_dao.add_bprs_database(rPatientbprs)
    patient_id = request.GET.get('patient_id')
    redirect_url = get_redirect_url(patient_session_id,patient_id,tools_config.other_test_next_type_url,tools_config.other_test_type)
    return redirect(redirect_url)


def add_rbans(request):
    patient_session_id = request.GET.get('patient_session_id')
    scale_id = tools_config.rbans
    doctor_id = request.session.get('doctor_id')
    total_scores = 1
    rPatientrbans = scales_models.RPatientRbans(patient_session_id=patient_session_id, scale_id=scale_id, doctor_id=doctor_id)
    data = request.__dict__
    fields_data_ = scales_models.RPatientRbans._meta.fields
    data_dict = rPatientrbans.__dict__
    for ele in fields_data_:
        data_dict[ele.name] = request.POST.get(ele.name)
    scales_dao.add_rbans_database(rPatientrbans)
    patient_id = request.GET.get('patient_id')
    redirect_url = get_redirect_url(patient_session_id,patient_id,tools_config.cognition_next_type_url,tools_config.cognition_type)
    return redirect(redirect_url)


def add_patient_basic_information_health(request):
    patient_session_id = request.GET.get('patient_session_id')
    scale_id = tools_config.information_health
    doctor_id = request.session.get('doctor_id')
    total_scores = 1
    rPatientBasicInformationHealth = scales_models.RPatientBasicInformationHealth(patient_session_id=patient_session_id,
                                                                    scale_id=scale_id, doctor_id=doctor_id)
    data = request.__dict__
    fields_data_ = scales_models.RPatientBasicInformationHealth._meta.fields
    data_dict = rPatientBasicInformationHealth.__dict__
    for ele in fields_data_:
        data_dict[ele.name] = request.POST.get(ele.name)
    scales_dao.add_patient_basic_information_health_database(rPatientBasicInformationHealth)
    patient_id = request.GET.get('patient_id')
    redirect_url = get_redirect_url(patient_session_id,patient_id,tools_config.general_info_next_url,tools_config.general_info_type)
    return redirect(redirect_url)


#########################################################syh
################################################zrq


# zrq----------------------------------------------
def add_abuse(request):
    patient_session_id = request.GET.get('patient_session_id')
    scale_id = tools_config.information_abuse
    doctor_id = request.session.get('doctor_id')
    rPatientBasicInformationAbuse = scales_models.RPatientBasicInformationAbuse(patient_session_id=patient_session_id, scale_id=scale_id, doctor_id=doctor_id)
    data = request.__dict__
    fields_data_= scales_models.RPatientBasicInformationAbuse._meta.fields
    data_dict = rPatientBasicInformationAbuse.__dict__
    for ele in fields_data_:
        data_dict[ele.name]=request.POST.get(ele.name)
    scales_dao.add_abuse_database(rPatientBasicInformationAbuse)
    patient_id = request.GET.get('patient_id')
    redirect_url = get_redirect_url(patient_session_id,patient_id,tools_config.general_info_next_url,tools_config.general_info_type)
    return redirect(redirect_url)


def add_hama(request):
    patient_session_id = request.GET.get('patient_session_id')
    scale_id = tools_config.hama
    doctor_id = request.session.get('doctor_id')
    rPatientHama = scales_models.RPatientHama(patient_session_id=patient_session_id, scale_id=scale_id, doctor_id=doctor_id)
    data = request.__dict__
    fields_data_= scales_models.RPatientHama._meta.fields
    data_dict=rPatientHama.__dict__
    for ele in fields_data_:
        data_dict[ele.name]=request.POST.get(ele.name)

    scales_dao.add_hama_database(rPatientHama)
    patient_id = request.GET.get('patient_id')
    redirect_url = get_redirect_url(patient_session_id,patient_id,tools_config.other_test_next_type_url,tools_config.other_test_type)
    return redirect(redirect_url)



def add_growth(request):
    patient_session_id = request.GET.get('patient_session_id')
    scale_id = tools_config.ctq_sf
    doctor_id = request.session.get('doctor_id')
    rPatientGrowth = scales_models.RPatientGrowth(patient_session_id=patient_session_id, scale_id=scale_id, doctor_id=doctor_id)
    data = request.__dict__
    fields_data_= scales_models.RPatientGrowth._meta.fields
    data_dict=rPatientGrowth.__dict__
    for ele in fields_data_:
        data_dict[ele.name]=request.POST.get(ele.name)
    scales_dao.add_growth_database(rPatientGrowth)
    patient_id = request.GET.get('patient_id')
    redirect_url = get_redirect_url(patient_session_id,patient_id,tools_config.self_test_next_type_url,tools_config.self_test_type)
    return redirect(redirect_url)


def add_adolescent_events(request):
    patient_session_id = request.GET.get('patient_session_id')
    scale_id = tools_config.aslec
    doctor_id = request.session.get('doctor_id')
    rPatientAdolescentEvents = scales_models.RPatientAdolescentEvents(patient_session_id=patient_session_id, scale_id=scale_id, doctor_id=doctor_id)
    data = request.__dict__
    fields_data_= scales_models.RPatientAdolescentEvents._meta.fields
    data_dict=rPatientAdolescentEvents.__dict__
    for ele in fields_data_:
        data_dict[ele.name]=request.POST.get(ele.name)
    scales_dao.add_adolescent_events_database(rPatientAdolescentEvents)
    patient_id = request.GET.get('patient_id')
    redirect_url = get_redirect_url(patient_session_id,patient_id,tools_config.self_test_next_type_url,tools_config.self_test_type)
    return redirect(redirect_url)


def add_fept(request):
    patient_session_id = request.GET.get('patient_session_id')
    scale_id = tools_config.fept
    doctor_id = request.session.get('doctor_id')
    # 创建一个对象
    rPatientFept = scales_models.RPatientFept(patient_session_id=patient_session_id, scale_id=scale_id, doctor_id=doctor_id)
    # 通过field的方式进行数据的传递，注意，需要保证form表单中各项的名称与数据库中字段名称是名称相同
    fields_data = scales_models.RPatientFept._meta.fields
    data_dict = rPatientFept.__dict__
    for ele in fields_data:
        data_dict[ele.name] = request.POST.get(ele.name)
    scales_dao.add_fept_database(rPatientFept)
    patient_id = request.GET.get('patient_id')
    redirect_url = get_redirect_url(patient_session_id,patient_id,tools_config.cognition_next_type_url,tools_config.cognition_type)
    return redirect(redirect_url)



def add_vept(request):
    # GET请求获取pd，sid，did
    patient_session_id = request.GET.get('patient_session_id')
    scale_id = tools_config.vept
    doctor_id = request.session.get('doctor_id')
    # 创建一个对象
    rPatientVept = scales_models.RPatientVept(patient_session_id=patient_session_id, scale_id=scale_id, doctor_id=doctor_id)
    # 通过field的方式进行数据的传递，注意，需要保证form表单中各项的名称与数据库中字段名称是名称相同
    fields_data = scales_models.RPatientVept._meta.fields
    data_dict = rPatientVept.__dict__
    for ele in fields_data:
        data_dict[ele.name] = request.POST.get(ele.name)
    scales_dao.add_vept_database(rPatientVept)
    patient_id = request.GET.get('patient_id')
    redirect_url = get_redirect_url(patient_session_id,patient_id,tools_config.cognition_next_type_url,tools_config.cognition_type)
    return redirect(redirect_url)


################################################

def add_ymrs(request):
    patient_session_id = request.GET.get('patient_session_id')
    scale_id = tools_config.ymrs
    doctor_id = request.session.get('doctor_id')
    rPatientYmrs = scales_models.RPatientYmrs(patient_session_id=patient_session_id, scale_id=scale_id, doctor_id=doctor_id)
    data = request.__dict__
    fields_data_ = scales_models.RPatientYmrs._meta.fields
    data_dict = rPatientYmrs.__dict__
    for ele in fields_data_:
        data_dict[ele.name] = request.POST.get(ele.name)
    scales_dao.add_ymrs_database(rPatientYmrs)
    patient_id = request.GET.get('patient_id')
    redirect_url = get_redirect_url(patient_session_id,patient_id,tools_config.other_test_next_type_url,tools_config.other_test_type)
    return redirect(redirect_url)



def add_sembu(request):
    patient_session_id = request.GET.get('patient_session_id')
    scale_id = tools_config.s_embu
    doctor_id = request.session.get('doctor_id')
    rPatientSembu = scales_models.RPatientSembu(patient_session_id=patient_session_id, scale_id=scale_id, doctor_id=doctor_id)
    data = request.__dict__
    fields_data_ = scales_models.RPatientSembu._meta.fields
    data_dict = rPatientSembu.__dict__
    for ele in fields_data_:
        data_dict[ele.name] = request.POST.get(ele.name)

    scales_dao.add_sembu_database(rPatientSembu)
    patient_id = request.GET.get('patient_id')
    redirect_url = get_redirect_url(patient_session_id,patient_id,tools_config.self_test_next_type_url,tools_config.self_test_type)
    return redirect(redirect_url)



def add_atq(request):
    patient_session_id = request.GET.get('patient_session_id')
    scale_id = tools_config.atq
    doctor_id = request.session.get('doctor_id')
    rPatientAtq = scales_models.RPatientAtq(patient_session_id=patient_session_id, scale_id=scale_id, doctor_id=doctor_id)
    data = request.__dict__
    fields_data_ = scales_models.RPatientAtq._meta.fields
    data_dict = rPatientAtq.__dict__
    for ele in fields_data_:
        data_dict[ele.name] = request.POST.get(ele.name)
    scales_dao.add_atq_database(rPatientAtq)
    patient_id = request.GET.get('patient_id')
    redirect_url = get_redirect_url(patient_session_id,patient_id,tools_config.self_test_next_type_url,tools_config.self_test_type)
    return redirect(redirect_url)



def add_wcst(request):
    patient_session_id = request.GET.get('patient_session_id')
    scale_id = tools_config.wcst
    doctor_id = request.session.get('doctor_id')
    rPatientWcst = scales_models.RPatientWcst(patient_session_id=patient_session_id, scale_id=scale_id, doctor_id=doctor_id)
    data = request.__dict__
    fields_data_ = scales_models.RPatientWcst._meta.fields
    data_dict = rPatientWcst.__dict__
    for ele in fields_data_:
        data_dict[ele.name] = request.POST.get(ele.name)
    scales_dao.add_wcst_database(rPatientWcst)
    patient_id = request.GET.get('patient_id')
    redirect_url = get_redirect_url(patient_session_id,patient_id,tools_config.cognition_next_type_url,tools_config.cognition_type)
    return redirect(redirect_url)


def add_other(request):
    patient_session_id = request.GET.get('patient_session_id')
    scale_id = tools_config.information_other
    doctor_id = request.session.get('doctor_id')
    rPatientBasicInformationOther = scales_models.RPatientBasicInformationOther(patient_session_id=patient_session_id, scale_id=scale_id, doctor_id=doctor_id)
    data = request.__dict__
    fields_data_ = scales_models.RPatientBasicInformationOther._meta.fields
    data_dict = rPatientBasicInformationOther.__dict__
    for ele in fields_data_:
        data_dict[ele.name] = request.POST.get(ele.name)
    scales_dao.add_other_database(rPatientBasicInformationOther)
    patient_id = request.GET.get('patient_id')
    redirect_url = get_redirect_url(patient_session_id,patient_id,tools_config.general_info_next_url,tools_config.general_info_type)
    return redirect(redirect_url)


'''
封装的函数
'''
# 获取到需要跳转的url，首先获取到未完成的最小的scale_id，假如没有的话，那么就跳转到下一个类型，假如有的话，那么跳转到该种量表
def get_redirect_url(patient_session_id,patient_id,next_type,do_scale_type):
    min_unfinished_scale = scales_dao.get_min_unfinished_scale(do_scale_type, patient_session_id)
    if min_unfinished_scale is None:
        redirect_url = '{}?patient_session_id={}&patient_id={}'.format(next_type,str(patient_session_id),str(patient_id))
        return redirect_url
    # /scales/get_XXX_form
    next_page_url = tools_config.scales_html_dict[min_unfinished_scale]
    redirect_url = '{}?patient_session_id={}&patient_id={}'.format(next_page_url, str(patient_session_id), str(patient_id))
    return redirect_url