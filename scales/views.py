from django.shortcuts import render, redirect,HttpResponse
import json
import scales.dao as scales_dao
import scales.models as scales_models
import tools.config as tools_config
import patients.dao as patients_dao
import tools.Utils as tools_utils

'''
页面跳转逻辑实现
页面跳转逻辑功能主要包括提交量表跳转到下一个，跳过该量表不做，返回四个选择项页面，返回上一个量表
各个配置项位于tools.config下
--提交量表跳转到下一个页面：
    需要注意的是，我们的量表只可能往后跳，不可以向前跳，往前跳需要依赖于返回上一个量表；量表跳转只存在于同一个种类（个人，他评，自评，认知）的量表下，该种类全部完成，返回四个选择页面
    提交量表完成之后，该量表rpatientscales关系表state==1;
    寻找第一个大于他的，与他同一类别的未完成的scale进行跳转;
    未找到，跳转到选择界面
-- 跳过该量表不做
    寻找第一个大于他的未完成的scale进行跳转;
    
-- 进入四个选择页面
    需要传递每一个量表类别还有几个量表未完成，假如没有未完成，那么不可点击
'''

'''
封装的函数
'''


# 获取页面跳转的url
def get_redirect_url(patient_session_id, patient_id, next_type, do_scale_type, cur_scale_id):
    '''
    Args:
        patient_session_id:复扫id
        patient_id:病人id
        next_type:下一个跳转的量表类型，暂时废弃
        do_scale_type:量表类型，个人资料，他评，自评，认知
        cur_scale_id:当前的量表id
    Returns:跳转页面的url
    -------------
    1.获取到第一个大于当前量表id的未完成的量表id，且该id与当前量表同类别
    2.假如没有，表明这个种类的量表已经完成（跳过量表除外），跳转到四个选择页面
    3.找到该id，跳转到该量表所在的form页面
    '''
    min_unfinished_scale = scales_dao.get_min_unfinished_scale(do_scale_type, patient_session_id, cur_scale_id)
    # min_unfinished_scale = scales_dao.get_next_scales_detail(patient_session_id, cur_scale_id)
    if min_unfinished_scale is None:
        redirect_url = '{}?patient_session_id={}&patient_id={}'.format(tools_config.select_scales_url,
                                                                       str(patient_session_id), str(patient_id))
        return redirect_url
    # /scales/get_XXX_form
    next_page_url = tools_config.scales_html_dict[min_unfinished_scale]
    redirect_url = '{}?patient_session_id={}&patient_id={}'.format(next_page_url, str(patient_session_id),
                                                                   str(patient_id))
    return redirect_url

'''
对象进行赋值操作
遍历POST中的所有键值对
    1.假如model类有相应的键与其对应并且值不为空字符串，那么进行赋值
    2.否则，将数据库中的值设置为None
----------------这个函数需要保证你传递过来的数据必须要是完整的----------------------------------------
'''
def set_attr_by_post(request, scale_object):
    for key in request.POST.keys():
        if hasattr(scale_object, key) and request.POST.get(key).strip() != '':
            setattr(scale_object, key, request.POST.get(key))
        else:
            setattr(scale_object, key, None)
    return scale_object

def judge_other_scale_state(request):
     total=tools_config.other_test_scale_num[request.GET.get('scale_id')]
     count=0
     for key in request.POST.keys():
          if  request.POST.get(key).strip() != '':
              count=count+1
     count=count-1
     if total==count:
        state=1
     else:
        state=0
     return state

'''
获取表单
'''


# 个人基本信息
def get_general_info_forms(request):
    patient_session_id = request.GET.get('patient_session_id')
    patient_id = request.GET.get('patient_id')
    redirect_url = get_redirect_url(patient_session_id, patient_id, tools_config.general_info_next_url,
                                    tools_config.general_info_type, 0)
    return redirect(redirect_url)

# 他测总量表
def get_other_test_forms(request):
    patient_session_id = request.GET.get('patient_session_id')
    patient_id = request.GET.get('patient_id')
    redirect_url = get_redirect_url(patient_session_id, patient_id, tools_config.other_test_next_type_url,
                                    tools_config.other_test_type, 0)
    return redirect(redirect_url)

# 自测总量表
def get_self_test_forms(request):
    patient_session_id = request.GET.get('patient_session_id')
    patient_id = request.GET.get('patient_id')
    redirect_url = get_redirect_url(patient_session_id, patient_id, tools_config.self_test_next_type_url,
                                    tools_config.self_test_type, 0)
    return redirect(redirect_url)

# 认知测试总量表
def get_cognition_forms(request):
    patient_session_id = request.GET.get('patient_session_id')
    patient_id = request.GET.get('patient_id')
    redirect_url = get_redirect_url(patient_session_id, patient_id, tools_config.cognition_next_type_url,
                                    tools_config.cognition_type, 0)
    return redirect(redirect_url)

# 进入四个选择项的界面，需要获取到各个量表类型他的list
def get_select_scales(request):
    patient_session_id = request.GET.get('patient_session_id')
    patient_id = request.GET.get('patient_id')
    patient = patients_dao.get_base_info_byPK(patient_id)
    patient.birth_date = patient.birth_date.strftime('%Y-%m-%d')
    patient_detail = patients_dao.get_patient_detail_last_byPatientId(patient_id)
    # 获取各个scaleType的list信息
    scales_list = patients_dao.judgment_scales(patient_session_id)
    generalinfo_scale_list, other_test_scale_list, self_test_scale_list, cognition_scale_list = scales_dao.get_uodo_scales(
        patient_session_id)
    return render(request, 'select_scales.html', {'patient_baseinfo': patient,
                                                  'patient_id': patient.id,
                                                  'standard_id': patient_detail.standard_id,
                                                  'patient_session_id': patient_session_id,
                                                  "username": request.session.get('username'),
                                                  'patient_detail': patient_detail,
                                                  "todo_generalinfo_scale_size": len(generalinfo_scale_list),
                                                  "todo_other_test_scale_size": len(other_test_scale_list),
                                                  "todo_self_test_scale_size": len(self_test_scale_list),
                                                  "todo_cognition_scale_size": len(cognition_scale_list),
                                                  })
















'''
get_XXX_form:获取表单信息
主要是为了解决重定向无法传递context问题
需要传递scale_id：配置文件获取
       scale_name_list：该页面所需要的所有量表名称
'''









# 获取家庭情况表单
def get_family_form(request):
    # 由于要传入生日信息，因此这里需要获取一些下一页面所需要的值
    patient_id = request.GET.get('patient_id')
    patient_session_id = request.GET.get('patient_session_id')
    base_info = patients_dao.get_base_info_byPK(patient_id)
    patient_detail = patients_dao.get_patient_detail_byPK(patient_session_id)
    base_info.birth_date = base_info.birth_date.strftime('%Y-%m-%d')
    age = patient_detail.age
    nation_list = patients_dao.get_DEthnicity_all()
    patient_session_id = request.GET.get('patient_session_id')
    patient_detail = patients_dao.get_patient_detail_byPK(patient_session_id)
    if patient_detail.handy is None:
        patient_detail.handy = 0
    scale_name_list = scales_dao.get_scalename_bytype(tools_config.general_info_type, patient_session_id)
    return render(request, 'nbh/add_family.html', {'patient_session_id': request.GET.get('patient_session_id'),
                                                   'patient_id': request.GET.get('patient_id'),
                                                   'username': request.session.get('username'),
                                                   'base_info': base_info,
                                                   'age': age,
                                                   'nation_list': nation_list,
                                                   'scale_name_list': scale_name_list,
                                                   'patient_detail': patient_detail,
                                                   'scale_id': tools_config.information_family,
                                                   'handy': patient_detail.handy,
                                                   })

# 获取学习情况表单
def get_study_form(request):
    patient_session_id = request.GET.get('patient_session_id')
    scale_name_list = scales_dao.get_scalename_bytype(tools_config.general_info_type, patient_session_id)
    return render(request, 'nbh/add_study.html', {'patient_session_id': patient_session_id,
                                                  'patient_id': request.GET.get('patient_id'),
                                                  'username': request.session.get('username'),
                                                  'scale_name_list': scale_name_list,
                                                  'scale_id': tools_config.information_study,
                                                  })

# 获取健康情况表单
def get_health_form(request):
    patient_session_id = request.GET.get('patient_session_id')
    scale_name_list = scales_dao.get_scalename_bytype(tools_config.general_info_type, patient_session_id)
    return render(request, 'nbh/add_health.html', {'patient_session_id': patient_session_id,
                                                   'patient_id': request.GET.get('patient_id'),
                                                   'username': request.session.get('username'),
                                                   'scale_name_list': scale_name_list,
                                                   'scale_id': tools_config.information_health,
                                                   })

# 获取物质依赖表单
def get_abuse_form(request):
    patient_session_id = request.GET.get('patient_session_id')
    scale_name_list = scales_dao.get_scalename_bytype(tools_config.general_info_type, patient_session_id)
    return render(request, 'nbh/add_abuse.html', {'patient_session_id': patient_session_id,
                                                  'patient_id': request.GET.get('patient_id'),
                                                  'username': request.session.get('username'),
                                                  'scale_name_list': scale_name_list,
                                                  'scale_id': tools_config.information_abuse,
                                                  })

# 获取其他资料表单
def get_other_form(request):
    patient_session_id = request.GET.get('patient_session_id')
    scale_name_list = scales_dao.get_scalename_bytype(tools_config.general_info_type, patient_session_id)
    return render(request, 'nbh/add_other.html', {'patient_session_id': patient_session_id,
                                                  'patient_id': request.GET.get('patient_id'),
                                                  'username': request.session.get('username'),
                                                  'scale_name_list': scale_name_list,
                                                  'scale_id': tools_config.information_other,
                                                  })

# 获取利手量表表单
def get_chi_form(request):
    patient_session_id = request.GET.get('patient_session_id')
    scale_name_list = scales_dao.get_scalename_bytype(tools_config.general_info_type, patient_session_id)
    return render(request, 'nbh/add_chi.html', {'patient_session_id': patient_session_id,
                                                'patient_id': request.GET.get('patient_id'),
                                                'username': request.session.get('username'),
                                                'scale_name_list': scale_name_list,
                                                'scale_id': tools_config.chi,
                                                })

# 获取病人病史表单
def get_patient_medical_history_form(request):
    # 获取需要做的量表列表
    patient_session_id = request.GET.get('patient_session_id')
    scale_name_list = scales_dao.get_scalename_bytype(tools_config.general_info_type, patient_session_id)
    return render(request, 'nbh/add_patient_medical_history.html', {'patient_session_id': patient_session_id,
                                                                    'patient_id': request.GET.get('patient_id'),
                                                                    'username': request.session.get('username'),
                                                                    'scale_name_list': scale_name_list,
                                                                    'scale_id': tools_config.mediacal_history, })


# 获取耶鲁布朗表单
def get_ybocs_form(request):
    patient_session_id = request.GET.get('patient_session_id')
    scale_name_list = scales_dao.get_scalename_bytype(tools_config.self_test_type, patient_session_id)
    return render(request, 'nbh/add_ybocs.html', {'patient_session_id': request.GET.get('patient_session_id'),
                                                  'patient_id': request.GET.get('patient_id'),
                                                  'username': request.session.get('username'),
                                                  'scale_name_list': scale_name_list,
                                                  'scale_id': tools_config.ybocs, })

# 获取自杀量表表单
def get_bss_form(request):
    patient_session_id = request.GET.get('patient_session_id')
    scale_name_list = scales_dao.get_scalename_bytype(tools_config.self_test_type, patient_session_id)
    return render(request, 'nbh/add_bss.html', {'patient_session_id': request.GET.get('patient_session_id'),
                                                'patient_id': request.GET.get('patient_id'),
                                                'username': request.session.get('username'),
                                                'scale_name_list': scale_name_list,
                                                'scale_id': tools_config.bss, })

# 获取33项轻躁狂表单
def get_hcl_33_form(request):
    patient_session_id = request.GET.get('patient_session_id')
    scale_name_list = scales_dao.get_scalename_bytype(tools_config.self_test_type, patient_session_id)
    return render(request, 'nbh/add_hcl_33.html', {'patient_session_id': request.GET.get('patient_session_id'),
                                                   'patient_id': request.GET.get('patient_id'),
                                                   'username': request.session.get('username'),
                                                   'scale_name_list': scale_name_list,
                                                   'scale_id': tools_config.hcl_33, })

# 获取斯奈斯快乐量表
def get_shaps_form(request):
    patient_session_id = request.GET.get('patient_session_id')
    scale_name_list = scales_dao.get_scalename_bytype(tools_config.self_test_type, patient_session_id)
    return render(request, 'nbh/add_shaps.html', {'patient_session_id': request.GET.get('patient_session_id'),
                                                  'patient_id': request.GET.get('patient_id'),
                                                  'username': request.session.get('username'),
                                                  'scale_name_list': scale_name_list,
                                                  'scale_id': tools_config.shaps, })

# 获取快感体验能力表单
def get_teps_form(request):
    patient_session_id = request.GET.get('patient_session_id')
    scale_name_list = scales_dao.get_scalename_bytype(tools_config.self_test_type, patient_session_id)
    return render(request, 'nbh/add_teps.html', {'patient_session_id': request.GET.get('patient_session_id'),
                                                 'patient_id': request.GET.get('patient_id'),
                                                 'username': request.session.get('username'),
                                                 'scale_name_list': scale_name_list,
                                                 'scale_id': tools_config.teps, })

# 获取儿童期成长经历表单
def get_ctq_sf_form(request):
    patient_session_id = request.GET.get('patient_session_id')
    scale_name_list = scales_dao.get_scalename_bytype(tools_config.self_test_type, patient_session_id)
    return render(request, 'nbh/add_ctq_sf.html', {'patient_session_id': request.GET.get('patient_session_id'),
                                                   'patient_id': request.GET.get('patient_id'),
                                                   'username': request.session.get('username'),
                                                   'scale_name_list': scale_name_list,
                                                   'scale_id': tools_config.ctq_sf, })

# 获取认知情绪调节表单
def get_cerq_c_form(request):
    patient_session_id = request.GET.get('patient_session_id')
    scale_name_list = scales_dao.get_scalename_bytype(tools_config.self_test_type, patient_session_id)
    return render(request, 'nbh/add_cerq_c.html', {'patient_session_id': request.GET.get('patient_session_id'),
                                                   'patient_id': request.GET.get('patient_id'),
                                                   'username': request.session.get('username'),
                                                   'scale_name_list': scale_name_list,
                                                   'scale_id': tools_config.cerq_c, })

# 获取青少年生活事件表单
def get_aslec_form(request):
    patient_session_id = request.GET.get('patient_session_id')
    scale_name_list = scales_dao.get_scalename_bytype(tools_config.self_test_type, patient_session_id)
    return render(request, 'nbh/add_aslec.html', {'patient_session_id': request.GET.get('patient_session_id'),
                                                  'patient_id': request.GET.get('patient_id'),
                                                  'username': request.session.get('username'),
                                                  'scale_name_list': scale_name_list,
                                                  'scale_id': tools_config.aslec, })

# 获取简氏父母教育表单
def get_s_embu_form(request):
    patient_session_id = request.GET.get('patient_session_id')
    scale_name_list = scales_dao.get_scalename_bytype(tools_config.self_test_type, patient_session_id)
    return render(request, 'nbh/add_s_embu.html', {'patient_session_id': request.GET.get('patient_session_id'),
                                                   'patient_id': request.GET.get('patient_id'),
                                                   'username': request.session.get('username'),
                                                   'scale_name_list': scale_name_list,
                                                   'scale_id': tools_config.s_embu, })

# 获取自动思维问卷表单
def get_atq_form(request):
    patient_session_id = request.GET.get('patient_session_id')
    scale_name_list = scales_dao.get_scalename_bytype(tools_config.self_test_type, patient_session_id)
    return render(request, 'nbh/add_atq.html', {'patient_session_id': request.GET.get('patient_session_id'),
                                                'patient_id': request.GET.get('patient_id'),
                                                'username': request.session.get('username'),
                                                'scale_name_list': scale_name_list,
                                                'scale_id': tools_config.atq, })

# 获取威斯康辛表单
def get_wcst_form(request):
    patient_session_id = request.GET.get('patient_session_id')
    scale_name_list = scales_dao.get_scalename_bytype(tools_config.cognition_type, patient_session_id)
    return render(request, 'nbh/add_wcst.html', {'patient_session_id': request.GET.get('patient_session_id'),
                                                 'patient_id': request.GET.get('patient_id'),
                                                 'username': request.session.get('username'),
                                                 'scale_name_list': scale_name_list,
                                                 'scale_id': tools_config.wcst, })

# 获取重复成套性测试表单
def get_rbans_form(request):
    patient_session_id = request.GET.get('patient_session_id')
    scale_name_list = scales_dao.get_scalename_bytype(tools_config.cognition_type, patient_session_id)
    return render(request, 'nbh/add_rbans.html', {'patient_session_id': request.GET.get('patient_session_id'),
                                                  'patient_id': request.GET.get('patient_id'),
                                                  'username': request.session.get('username'),
                                                  'scale_name_list': scale_name_list,
                                                  'scale_id': tools_config.rbans, })

# 获取面孔认知表单
def get_fept_form(request):
    patient_session_id = request.GET.get('patient_session_id')
    scale_name_list = scales_dao.get_scalename_bytype(tools_config.cognition_type, patient_session_id)
    return render(request, 'nbh/add_fept.html', {'patient_session_id': request.GET.get('patient_session_id'),
                                                 'patient_id': request.GET.get('patient_id'),
                                                 'username': request.session.get('username'),
                                                 'scale_name_list': scale_name_list,
                                                 'scale_id': tools_config.fept, })

# 获取语音认知表单
def get_vept_form(request):
    patient_session_id = request.GET.get('patient_session_id')
    scale_name_list = scales_dao.get_scalename_bytype(tools_config.cognition_type, patient_session_id)
    return render(request, 'nbh/add_vept.html', {'patient_session_id': request.GET.get('patient_session_id'),
                                                 'patient_id': request.GET.get('patient_id'),
                                                 'username': request.session.get('username'),
                                                 'scale_name_list': scale_name_list,
                                                 'scale_id': tools_config.vept, })

'''
量表具体操作
'''
#一般资料
def add_family_info(request):
    if request.POST:
        doctor_id = request.session.get('doctor_id')
        patient_id = request.GET.get('patient_id')
        patient_session_id = request.GET.get('patient_session_id')
        patient_id = request.GET.get('patient_id')
        scales_id = tools_config.information_family
        dpatientdetail = scales_models.DPatientDetail.objects.filter(pk=patient_session_id).first()
        patient_basic_info_family = scales_dao.get_patient_base_info_family_byPatientDetailId(patient_session_id)
        patient_base_info = patients_dao.get_base_info_byPK(patient_id)

        if patient_basic_info_family is None:
            patient_basic_info_family = scales_models.RPatientBasicInformationFamily(patient_session=dpatientdetail,
                                                                                     doctor_id=doctor_id,
                                                                                     scale_id=scales_id)

        form_list = [dpatientdetail, patient_basic_info_family, patient_base_info]
        # 有些字段传回来的是‘’，不能自动转换成int或者Null
        for key in request.POST.keys():
            for form in form_list:
                if hasattr(form, key):
                    if request.POST.get(key) == '':
                        setattr(form, key, None)
                    else:
                        setattr(form, key, request.POST.get(key))

        patients_dao.add_patient_detail(dpatientdetail)
        patients_dao.add_base_info(patient_base_info)

    scales_dao.dao_add_family_info(patient_basic_info_family)
    redirect_url = get_redirect_url(patient_session_id, patient_id, tools_config.general_info_next_url,
                                    tools_config.general_info_type, tools_config.information_family)
    return redirect(redirect_url)

def add_information_study(request):
    patient_session_id = request.GET.get('patient_session_id')
    scale_id = tools_config.information_study
    doctor_id = request.session.get('doctor_id')
    rPatientBasicInformationStudy = scales_dao.get_patient_base_info_study_byPatientDetailId(patient_session_id)
    if rPatientBasicInformationStudy is None:
        rPatientBasicInformationStudy = scales_models.RPatientBasicInformationStudy(
            patient_session_id=patient_session_id, scale_id=scale_id, doctor_id=doctor_id)
    rPatientBasicInformationStudy = set_attr_by_post(request, rPatientBasicInformationStudy)

    scales_dao.add_information_study_database(rPatientBasicInformationStudy)
    patient_id = request.GET.get('patient_id')
    redirect_url = get_redirect_url(patient_session_id, patient_id, tools_config.general_info_next_url,
                                    tools_config.general_info_type, tools_config.information_study)
    return redirect(redirect_url)

def add_patient_basic_information_health(request):
    patient_session_id = request.GET.get('patient_session_id')
    scale_id = tools_config.information_health
    doctor_id = request.session.get('doctor_id')
    rPatientBasicInformationHealth = scales_dao.get_patient_base_info_health_byPatientDetailId(patient_session_id)
    if rPatientBasicInformationHealth is None:
        rPatientBasicInformationHealth = scales_models.RPatientBasicInformationHealth(
            patient_session_id=patient_session_id,
            scale_id=scale_id, doctor_id=doctor_id)
    rPatientBasicInformationHealth = set_attr_by_post(request, rPatientBasicInformationHealth)
    scales_dao.add_patient_basic_information_health_database(rPatientBasicInformationHealth)
    patient_id = request.GET.get('patient_id')
    redirect_url = get_redirect_url(patient_session_id, patient_id, tools_config.general_info_next_url,
                                    tools_config.general_info_type, tools_config.information_health)
    return redirect(redirect_url)

def add_abuse(request):
    patient_session_id = request.GET.get('patient_session_id')
    scale_id = tools_config.information_abuse
    doctor_id = request.session.get('doctor_id')
    rPatientBasicInformationAbuse = scales_dao.get_patient_base_info_abuse_byPatientDetailId(patient_session_id)
    if rPatientBasicInformationAbuse is None:
        rPatientBasicInformationAbuse = scales_models.RPatientBasicInformationAbuse(
            patient_session_id=patient_session_id, scale_id=scale_id, doctor_id=doctor_id)
    rPatientBasicInformationAbuse = set_attr_by_post(request, rPatientBasicInformationAbuse)
    scales_dao.add_abuse_database(rPatientBasicInformationAbuse)
    patient_id = request.GET.get('patient_id')
    redirect_url = get_redirect_url(patient_session_id, patient_id, tools_config.general_info_next_url,
                                    tools_config.general_info_type, tools_config.information_abuse)
    return redirect(redirect_url)

def add_other(request):
    patient_session_id = request.GET.get('patient_session_id')
    scale_id = tools_config.information_other
    doctor_id = request.session.get('doctor_id')
    rPatientBasicInformationOther = scales_dao.get_patient_base_info_other_byPatientDetailId(patient_session_id)
    if rPatientBasicInformationOther is None:
        rPatientBasicInformationOther = scales_models.RPatientBasicInformationOther(
            patient_session_id=patient_session_id, scale_id=scale_id, doctor_id=doctor_id)
    rPatientBasicInformationOther = set_attr_by_post(request, rPatientBasicInformationOther)
    scales_dao.add_other_database(rPatientBasicInformationOther)
    patient_id = request.GET.get('patient_id')
    redirect_url = get_redirect_url(patient_session_id, patient_id, tools_config.general_info_next_url,
                                    tools_config.general_info_type, tools_config.information_other)
    return redirect(redirect_url)

def add_chinesehandle(request):
    patient_session_id = request.GET.get('patient_session_id')
    scale_id = tools_config.chi
    doctor_id = request.session.get('doctor_id')
    rPatientChineseHandy = scales_dao.get_handy_byPatientDetailId(patient_session_id)
    if rPatientChineseHandy is None:
        rPatientChineseHandy = scales_models.RPatientChineseHandy(patient_session_id=patient_session_id,
                                                                  scale_id=scale_id, doctor_id=doctor_id)
    rPatientChineseHandy = set_attr_by_post(request, rPatientChineseHandy)
    scales_dao.add_chinesehandle_database(rPatientChineseHandy)
    # 这里还要更新d_patient_detail表中的利手关系
    patient_detail = patients_dao.get_patient_detail_byPK(patient_session_id)
    patient_detail.handy = rPatientChineseHandy.result
    patients_dao.add_patient_detail(patient_detail)

    patient_id = request.GET.get('patient_id')
    redirect_url = get_redirect_url(patient_session_id, patient_id, tools_config.general_info_next_url,
                                    tools_config.general_info_type, tools_config.chi)
    return redirect(redirect_url)

def patient_basic_information(request):
    return render(request, 'patient_basic_information.html')



#自评
def add_ybo(request):
    if request.POST:
        patient_session_id = request.GET.get('patient_session_id')
        doctor_id = request.session.get('doctor_id')
        scale_id = tools_config.ybocs
        rpatientybobsessiontable = scales_dao.get_patient_YBO_byPatientDetailId(patient_session_id)
        if rpatientybobsessiontable is None:
            rpatientybobsessiontable = scales_models.RPatientYbobsessiontable(patient_session_id=patient_session_id,
                                                                              doctor_id=doctor_id,
                                                                              scale_id=scale_id)
        rpatientybobsessiontable = set_attr_by_post(request, rpatientybobsessiontable)
    # 添加数据库
    scales_dao.dao_add_ybo(rpatientybobsessiontable)
    # 页面跳转
    patient_id = request.GET.get('patient_id')
    redirect_url = get_redirect_url(patient_session_id, patient_id, tools_config.self_test_next_type_url,
                                    tools_config.self_test_type, tools_config.ybocs)
    return redirect(redirect_url)

def add_suicide(request):
    if request.POST:
        patient_session_id = request.GET.get('patient_session_id')
        doctor_id = request.session.get('doctor_id')
        scales_id = tools_config.bss
        rpatientsuicidal = scales_dao.get_patient_suicidal_byPatientDetailId(patient_session_id)
        if rpatientsuicidal is None:
            rpatientsuicidal = scales_models.RPatientSuicidal(patient_session_id=patient_session_id,
                                                              doctor_id=doctor_id,
                                                              scale_id=scales_id)

        rpatientsuicidal = set_attr_by_post(request, rpatientsuicidal)
    # 保存数据库
    scales_dao.dao_add_suicide(rpatientsuicidal)
    patient_id = request.GET.get('patient_id')
    redirect_url = get_redirect_url(patient_session_id, patient_id, tools_config.self_test_next_type_url,
                                    tools_config.self_test_type, tools_config.bss)
    return redirect(redirect_url)

def add_manicsymptom(request):
    patient_session_id = request.GET.get('patient_session_id')
    scale_id = tools_config.hcl_33
    doctor_id = request.session.get('doctor_id')
    rPatientManicsymptom = scales_dao.get_patient_manicSymptom_byPatientDetailId(patient_session_id)
    if rPatientManicsymptom is None:
        rPatientManicsymptom = scales_models.RPatientManicsymptom(patient_session_id=patient_session_id,
                                                                  scale_id=scale_id,
                                                                  doctor_id=doctor_id)
    rPatientManicsymptom = set_attr_by_post(request, rPatientManicsymptom)
    scales_dao.add_manicsymptom_database(rPatientManicsymptom)
    patient_id = request.GET.get('patient_id')
    redirect_url = get_redirect_url(patient_session_id, patient_id, tools_config.self_test_next_type_url,
                                    tools_config.self_test_type, tools_config.hcl_33)
    return redirect(redirect_url)

def add_happiness(request):
    patient_session_id = request.GET.get('patient_session_id')
    scale_id = tools_config.shaps
    doctor_id = request.session.get('doctor_id')
    rPatienthappiness = scales_dao.get_patient_happiness_byPatientDetailId(patient_session_id)
    if rPatienthappiness is None:
        rPatienthappiness = scales_models.RPatientHappiness(patient_session_id=patient_session_id, scale_id=scale_id,
                                                            doctor_id=doctor_id)
    rPatienthappiness = set_attr_by_post(request, rPatienthappiness)
    scales_dao.add_happiness_database(rPatienthappiness)
    patient_id = request.GET.get('patient_id')
    redirect_url = get_redirect_url(patient_session_id, patient_id, tools_config.self_test_next_type_url,
                                    tools_config.self_test_type, tools_config.shaps)
    return redirect(redirect_url)

'''
1.数据库中读取相应量表的结果记录
    结果存在，走的逻辑可能是重做，更新，以及续作
    结果不存在，走的逻辑必然是开始做的逻辑，所以创建一条新纪录
2.进行赋值操作，详见set_attr_by_post，该方法可以实现更新以及重做复用的问题
3.插入数据库
4.页面跳转，跳转到结果展示页面
'''
def add_pleasure(request):
    patient_session_id = request.GET.get('patient_session_id')
    scale_id = tools_config.teps
    doctor_id = request.session.get('doctor_id')
    # 1.读取结果记录
    rPatientPleasure = scales_dao.get_patient_pleasure_byPatientDetailId(patient_session_id)
    # 1.1不存在，创建新纪录
    if rPatientPleasure is None:
        rPatientPleasure = scales_models.RPatientPleasure(patient_session_id=patient_session_id, scale_id=scale_id,
                                                          doctor_id=doctor_id)
    # 2.赋值操作
    rPatientPleasure = set_attr_by_post(request, rPatientPleasure)
    # 3.插入数据库
    scales_dao.add_pleasure_database(rPatientPleasure)
    patient_id = request.GET.get('patient_id')
    # 4.页面跳转
    redirect_url = get_redirect_url(patient_session_id, patient_id, tools_config.self_test_next_type_url,
                                    tools_config.self_test_type, tools_config.teps)
    return redirect(redirect_url)

def add_growth(request):
    patient_session_id = request.GET.get('patient_session_id')
    scale_id = tools_config.ctq_sf
    doctor_id = request.session.get('doctor_id')
    rPatientGrowth = scales_dao.get_patient_growth_byPatientDetailId(patient_session_id)
    if rPatientGrowth is None:
        rPatientGrowth = scales_models.RPatientGrowth(patient_session_id=patient_session_id, scale_id=scale_id,
                                                      doctor_id=doctor_id)
    rPatientGrowth = set_attr_by_post(request, rPatientGrowth)
    scales_dao.add_growth_database(rPatientGrowth)
    patient_id = request.GET.get('patient_id')
    redirect_url = get_redirect_url(patient_session_id, patient_id, tools_config.self_test_next_type_url,
                                    tools_config.self_test_type, tools_config.ctq_sf)
    return redirect(redirect_url)

def add_cognitive_emotion(request):
    patient_session_id = request.GET.get('patient_session_id')
    scale_id = tools_config.cerq_c
    doctor_id = request.session.get('doctor_id')
    rPatientCognitiveEmotion = scales_dao.get_patient_cognitive_byPatientDetailId(patient_session_id)
    if rPatientCognitiveEmotion is None:
        rPatientCognitiveEmotion = scales_models.RPatientCognitiveEmotion(patient_session_id=patient_session_id,
                                                                          scale_id=scale_id,
                                                                          doctor_id=doctor_id)
    rPatientCognitiveEmotion = set_attr_by_post(request, rPatientCognitiveEmotion)
    scales_dao.add_cognitive_emotion_database(rPatientCognitiveEmotion)
    patient_id = request.GET.get('patient_id')
    redirect_url = get_redirect_url(patient_session_id, patient_id, tools_config.self_test_next_type_url,
                                    tools_config.self_test_type, tools_config.cerq_c)
    return redirect(redirect_url)

def add_adolescent_events(request):
    patient_session_id = request.GET.get('patient_session_id')
    scale_id = tools_config.aslec
    doctor_id = request.session.get('doctor_id')
    rPatientAdolescentEvents = scales_dao.get_patient_adolescent_byPatientDetailId(patient_session_id)
    if rPatientAdolescentEvents is None:
        rPatientAdolescentEvents = scales_models.RPatientAdolescentEvents(patient_session_id=patient_session_id,
                                                                          scale_id=scale_id, doctor_id=doctor_id)
    rPatientAdolescentEvents = set_attr_by_post(request, rPatientAdolescentEvents)
    scales_dao.add_adolescent_events_database(rPatientAdolescentEvents)
    patient_id = request.GET.get('patient_id')
    redirect_url = get_redirect_url(patient_session_id, patient_id, tools_config.self_test_next_type_url,
                                    tools_config.self_test_type, tools_config.aslec)
    return redirect(redirect_url)

def add_sembu(request):
    patient_session_id = request.GET.get('patient_session_id')
    scale_id = tools_config.s_embu
    doctor_id = request.session.get('doctor_id')
    rPatientSembu = scales_dao.get_patient_SEmbu_byPatientDetailId(patient_session_id)
    if rPatientSembu is None:
        rPatientSembu = scales_models.RPatientSembu(patient_session_id=patient_session_id, scale_id=scale_id,
                                                    doctor_id=doctor_id)
    rPatientSembu = set_attr_by_post(request, rPatientSembu)
    scales_dao.add_sembu_database(rPatientSembu)
    patient_id = request.GET.get('patient_id')
    redirect_url = get_redirect_url(patient_session_id, patient_id, tools_config.self_test_next_type_url,
                                    tools_config.self_test_type, tools_config.s_embu)
    return redirect(redirect_url)

def add_atq(request):
    patient_session_id = request.GET.get('patient_session_id')
    scale_id = tools_config.atq
    doctor_id = request.session.get('doctor_id')
    rPatientAtq = scales_dao.get_patient_ATQ_byPatientDetailId(patient_session_id)
    if rPatientAtq is None:
        rPatientAtq = scales_models.RPatientAtq(patient_session_id=patient_session_id, scale_id=scale_id,
                                                doctor_id=doctor_id)
    rPatientAtq = set_attr_by_post(request, rPatientAtq)
    scales_dao.add_atq_database(rPatientAtq)
    patient_id = request.GET.get('patient_id')
    redirect_url = get_redirect_url(patient_session_id, patient_id, tools_config.self_test_next_type_url,
                                    tools_config.self_test_type, tools_config.atq)
    return redirect(redirect_url)

#认知
def add_wcst(request):
    patient_session_id = request.GET.get('patient_session_id')
    scale_id = tools_config.wcst
    doctor_id = request.session.get('doctor_id')
    rPatientWcst = scales_dao.get_patient_wcst_byPatientDetailId(patient_session_id)
    if rPatientWcst is None:
        rPatientWcst = scales_models.RPatientWcst(patient_session_id=patient_session_id, scale_id=scale_id,
                                                  doctor_id=doctor_id)
    rPatientWcst = set_attr_by_post(request, rPatientWcst)
    scales_dao.add_wcst_database(rPatientWcst)
    patient_id = request.GET.get('patient_id')
    redirect_url = get_redirect_url(patient_session_id, patient_id, tools_config.cognition_next_type_url,
                                    tools_config.cognition_type, tools_config.wcst)
    return redirect(redirect_url)

def add_rbans(request):
    patient_session_id = request.GET.get('patient_session_id')
    scale_id = tools_config.rbans
    doctor_id = request.session.get('doctor_id')
    rPatientrbans = scales_dao.get_patient_rbans_byPatientDetailId(patient_session_id)
    if rPatientrbans is None:
        rPatientrbans = scales_models.RPatientRbans(patient_session_id=patient_session_id, scale_id=scale_id,
                                                    doctor_id=doctor_id)
    rPatientrbans = set_attr_by_post(request, rPatientrbans)
    scales_dao.add_rbans_database(rPatientrbans)
    patient_id = request.GET.get('patient_id')
    redirect_url = get_redirect_url(patient_session_id, patient_id, tools_config.cognition_next_type_url,
                                    tools_config.cognition_type, tools_config.rbans)
    return redirect(redirect_url)

def add_fept(request):
    patient_session_id = request.GET.get('patient_session_id')
    scale_id = tools_config.fept
    doctor_id = request.session.get('doctor_id')
    rPatientFept = scales_dao.get_patient_fept_byPatientDetailId(patient_session_id)
    if rPatientFept is None:
        rPatientFept = scales_models.RPatientFept(patient_session_id=patient_session_id, scale_id=scale_id,
                                                  doctor_id=doctor_id)
    rPatientFept = set_attr_by_post(request, rPatientFept)
    scales_dao.add_fept_database(rPatientFept)
    patient_id = request.GET.get('patient_id')
    redirect_url = get_redirect_url(patient_session_id, patient_id, tools_config.cognition_next_type_url,
                                    tools_config.cognition_type, tools_config.fept)
    return redirect(redirect_url)

def add_vept(request):
    # GET请求获取pd，sid，did
    patient_session_id = request.GET.get('patient_session_id')
    scale_id = tools_config.vept
    doctor_id = request.session.get('doctor_id')
    rPatientVept = scales_dao.get_patient_vept_byPatientDetailId(patient_session_id)
    if rPatientVept is None:
        rPatientVept = scales_models.RPatientVept(patient_session_id=patient_session_id, scale_id=scale_id,
                                                  doctor_id=doctor_id)
    rPatientVept = set_attr_by_post(request, rPatientVept)
    scales_dao.add_vept_database(rPatientVept)
    patient_id = request.GET.get('patient_id')
    redirect_url = get_redirect_url(patient_session_id, patient_id, tools_config.cognition_next_type_url,
                                    tools_config.cognition_type, tools_config.vept)
    return redirect(redirect_url)

#简要病史
def add_patient_medical_history(request):
    if request.POST:
        patient_session_id = request.GET.get('patient_session_id')
        scale_id = tools_config.mediacal_history
        doctor_id = request.session.get('doctor_id')
        rPatientMedicalHistory = scales_models.RPatientMedicalHistory(patient_session_id=patient_session_id,
                                                                      scale_id=scale_id,
                                                                      doctor_id=doctor_id)
        rPatientDrugsInformation = scales_models.RPatientDrugsInformation(patient_session_id=patient_session_id,
                                                                          scale_id=scale_id,
                                                                          doctor_id=doctor_id)
        seperator = '-'
        datestr = '01'
        for key in request.POST.keys():
            if hasattr(rPatientMedicalHistory, key):
                val = request.POST.get(key)
                if val == '':
                    val = None
                else:
                    if key == 'prophase_begin':
                        val = val + seperator + datestr
                    if key == 'prophase_end':
                        val = val + seperator + datestr
                    if key == 'first_time_begin':
                        val = val + seperator + datestr
                    if key == 'first_time_end':
                        val = val + seperator + datestr
                    if key == 'current_episode_date':
                        val = val + seperator + datestr
                setattr(rPatientMedicalHistory, key, val)
            else:
                pos = key.rfind('_')
                st = key[:pos]
                st2 = key[pos + 1]
                if hasattr(rPatientDrugsInformation, st):
                    val = request.POST.get(key)
                    if val == '':
                        val = None
                    else:
                        if st == 'begin_time':
                            val = val + seperator + datestr
                        if st == 'end_time':
                            val = val + seperator + datestr
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
    redirect_url = get_redirect_url(patient_session_id, patient_id, tools_config.general_info_next_url,
                                    tools_config.general_info_type, tools_config.mediacal_history)
    return redirect(redirect_url)
# 跳过量表
def skip_scale(request):
    patient_session_id = request.GET.get('patient_session_id')
    scale_id = request.GET.get('scale_id')
    scale = scales_dao.get_scale_by_id(scale_id)
    patient_id = request.GET.get('patient_id')
    redirect_url = get_redirect_url(patient_session_id, patient_id, tools_config.general_info_next_url,
                                    scale.do_scale_type, scale_id)
    return redirect(redirect_url)
##########--------------------------------------#########################
#进入上一量表
def get_last_url(request):
    patient_session_id = request.GET.get('patient_session_id')
    patient_id = request.GET.get('patient_id')
    scale_id = int(request.GET.get('scale_id'))
    rPatientScales=scales_dao.get_last_scales_detail(patient_session_id,scale_id)
    if int(rPatientScales.state) == 0  :
        last_page_url = tools_config.scales_html_dict[rPatientScales.scale_id]
        redirect_url = '{}?patient_session_id={}&patient_id={}'.format(last_page_url, str(patient_session_id), str(patient_id))
    else:
        last_page_url = tools_config.check_scales_html_dict[rPatientScales.scale_id]
        redirect_url = '{}?patient_session_id={}&patient_id={}'.format(last_page_url, str(patient_session_id),
                                                                       str(patient_id))
    return redirect(redirect_url)
#进入下一量表
def get_next_url(request):
    patient_session_id = request.GET.get('patient_session_id')
    patient_id = request.GET.get('patient_id')
    scale_id = int(request.GET.get('scale_id'))
    rPatientScales=scales_dao.get_next_scales_detail(patient_session_id,scale_id)
   #如果上一条未答
    if int(rPatientScales.state) == 0 :
        #未填写的
        next_page_url = tools_config.scales_html_dict[rPatientScales.scale_id]
        redirect_url = '{}?patient_session_id={}&patient_id={}'.format(next_page_url, str(patient_session_id), str(patient_id))
    else:
        next_page_url = tools_config.check_scales_html_dict[rPatientScales.scale_id]
        redirect_url = '{}?patient_session_id={}&patient_id={}'.format(next_page_url, str(patient_session_id),
                                                                       str(patient_id))

    return redirect(redirect_url)


'''
他评
'''

def get_scale_order(patient_session_id, scale_id,scale_type):
    '''

    :param patient_session_id:
    :param scale_id:
    :param scale_type: 量表类型
    一般 = 0
    他评 = 1
    自评 = 2
    认知 = 3
    :return: scale_name_list：同类型量表的名字
             order：在同类型量表中的顺序 若为第一个order=0，最后一个=1，啥也不是=2
    '''
    scale_name_list = scales_dao.get_scalename_bytype(scale_type, patient_session_id)
    first_scale_id, last_scale_id = scales_dao.get_order(patient_session_id, scale_id)
    if scale_id == first_scale_id:
        order = 0
    elif scale_id == last_scale_id:
        order = 1
    else:
        order = 2
    return scale_name_list, order
# 获取汉密尔顿抑郁表单
def add_hamd(request):
    patient_session_id = request.GET.get('patient_session_id')
    scale_id = tools_config.hamd_17
    doctor_id = request.session.get('doctor_id')
    patient_id = request.GET.get('patient_id')
    rPatientHAMD17 = scales_dao.get_patient_HAMD17_byPatientDetailId(patient_session_id)
    rPatientHAMD17_new = scales_models.RPatientHamd17(patient_session_id=patient_session_id, scale_id=scale_id,
                                                      doctor_id=doctor_id)
    if rPatientHAMD17 is not None:
        rPatientHAMD17_new.create_time = rPatientHAMD17.create_time
        rPatientHAMD17_new.id = rPatientHAMD17.id
    rPatientHAMD17_new = set_attr_by_post(request, rPatientHAMD17_new)
    state=judge_other_scale_state(request)
    # 插入数据库
    scales_dao.add_hamd_database(rPatientHAMD17_new,state)
    redirect_url = '/scales/get_check_hamd_17_form?patient_session_id={}&patient_id={}'.format(patient_session_id,
                                                                                                patient_id)
    return redirect(redirect_url)
#进入量表
def get_hamd_17_form(request):
    patient_session_id = request.GET.get('patient_session_id')
    scale_id = tools_config.hamd_17
    state = scales_dao.get_scale_state(patient_session_id=patient_session_id,scale_id=scale_id)
    scale_name_list,order=get_scale_order(patient_session_id,scale_id,tools_config.other_test_type)
    hamd_answer = scales_dao.get_patient_HAMD17_byPatientDetailId(patient_session_id)
    return render(request, 'nbh/add_hamd_17.html', {'patient_session_id': patient_session_id,
                                                    'patient_id': request.GET.get('patient_id'),
                                                    'username': request.session.get('username'),
                                                    'scale_name_list': scale_name_list,
                                                    'scale_id': scale_id,
                                                    'hamd_answer': hamd_answer,
                                                    'order':order,
                                                    'state':state
                                                    })
#查看量表
def get_check_hamd_17_form(request):
     patient_session_id = request.GET.get('patient_session_id')
     scale_id = tools_config.hamd_17
     scale_name_list, order = get_scale_order(patient_session_id, scale_id, tools_config.other_test_type)
     hamd_answer = scales_dao.get_patient_HAMD17_byPatientDetailId(patient_session_id)
     return render(request, 'nbh/edit_hamd_17.html', {'patient_session_id': patient_session_id,
                                                      'patient_id': request.GET.get('patient_id'),
                                                      'username': request.session.get('username'),
                                                      'scale_name_list': scale_name_list,
                                                      'scale_id': tools_config.hamd_17,
                                                      'hamd_answer':hamd_answer,
                                                      'order':order,
                                                    })

# 获取汉密尔顿焦虑
def add_hama(request):
    patient_session_id = request.GET.get('patient_session_id')
    scale_id = tools_config.hama
    doctor_id = request.session.get('doctor_id')
    patient_id = request.GET.get('patient_id')
    rPatientHama = scales_dao.get_patient_HAMA_byPatientDetailId(patient_session_id)
    rPatientHAMA_new = scales_models.RPatientHama(patient_session_id=patient_session_id, scale_id=scale_id,
                                                      doctor_id=doctor_id)
    if rPatientHama is not None:
        rPatientHAMA_new.create_time = rPatientHama.create_time
        rPatientHAMA_new.id = rPatientHama.id
    rPatientHAMA_new = set_attr_by_post(request, rPatientHAMA_new)
    state=judge_other_scale_state(request)
    scales_dao.add_hama_database(rPatientHAMA_new,state)
    redirect_url = '/scales/get_check_hama_form?patient_session_id={}&patient_id={}'.format(patient_session_id,
                                                                                               patient_id)
    #redirect_url = return_next(request)
    return redirect(redirect_url)

def get_hama_form(request):
    patient_session_id = request.GET.get('patient_session_id')
    scale_id = tools_config.hama
    state = scales_dao.get_scale_state(patient_session_id=patient_session_id,scale_id=scale_id)
    scale_name_list,order=get_scale_order(patient_session_id,scale_id,tools_config.other_test_type)
    hama_answer = scales_dao.get_patient_HAMA_byPatientDetailId(patient_session_id)
    return render(request, 'nbh/add_hama.html', {'patient_session_id': patient_session_id,
                                                 'patient_id': request.GET.get('patient_id'),
                                                 'username': request.session.get('username'),
                                                 'scale_name_list': scale_name_list,
                                                 'scale_id': scale_id,
                                                 'hama_answer': hama_answer,
                                                 'order':order,
                                                 'state':state})

def get_check_hama_form(request):
    patient_session_id = request.GET.get('patient_session_id')
    scale_id = tools_config.hama
    scale_name_list, order = get_scale_order(patient_session_id, scale_id, tools_config.other_test_type)
    hama_answer = scales_dao.get_patient_HAMA_byPatientDetailId(patient_session_id)
    return render(request, 'nbh/edit_hama.html', {'patient_session_id': patient_session_id,
                                                 'patient_id': request.GET.get('patient_id'),
                                                 'username': request.session.get('username'),
                                                 'scale_name_list': scale_name_list,
                                                 'scale_id': scale_id,
                                                 'hama_answer': hama_answer,
                                                 'order': order,
                                                 })

# 获取杨氏躁狂
def add_ymrs(request):
    patient_session_id = request.GET.get('patient_session_id')
    scale_id = tools_config.ymrs
    doctor_id = request.session.get('doctor_id')
    patient_id = request.GET.get('patient_id')
    rPatientYmrs = scales_dao.get_patient_YMRS_byPatientDetailId(patient_session_id)
    rPatientYmrs_new = scales_models.RPatientYmrs(patient_session_id=patient_session_id, scale_id=scale_id,
                                                  doctor_id=doctor_id)
    state=judge_other_scale_state(request)
    if rPatientYmrs is not None:
        rPatientYmrs_new.create_time = rPatientYmrs.create_time
        rPatientYmrs_new.id = rPatientYmrs.id

    rPatientYmrs_new = set_attr_by_post(request, rPatientYmrs_new)
    scales_dao.add_ymrs_database(rPatientYmrs_new,state)
    redirect_url = '/scales/get_check_ymrs_form?patient_session_id={}&patient_id={}'.format(patient_session_id,
                                                                                            patient_id)
    return redirect(redirect_url)

def get_ymrs_form(request):
    patient_session_id = request.GET.get('patient_session_id')
    scale_id = tools_config.ymrs
    state = scales_dao.get_scale_state(patient_session_id=patient_session_id, scale_id=scale_id)
    scale_name_list, order = get_scale_order(patient_session_id, scale_id, tools_config.other_test_type)
    ymrs_answer = scales_dao.get_patient_YMRS_byPatientDetailId(patient_session_id)
    return render(request, 'nbh/add_ymrs.html', {'patient_session_id': patient_session_id,
                                                 'patient_id': request.GET.get('patient_id'),
                                                 'username': request.session.get('username'),
                                                 'scale_name_list': scale_name_list,
                                                 'scale_id': scale_id,
                                                 'ymrs_answer': ymrs_answer,
                                                 'order': order,
                                                 'state': state})

def get_check_ymrs_form(request):
    patient_session_id = request.GET.get('patient_session_id')
    scale_id = tools_config.ymrs
    scale_name_list, order = get_scale_order(patient_session_id, scale_id, tools_config.other_test_type)
    ymrs_answer = scales_dao.get_patient_YMRS_byPatientDetailId(patient_session_id)
    return render(request, 'nbh/edit_ymrs.html', {'patient_session_id': patient_session_id,
                                                 'patient_id': request.GET.get('patient_id'),
                                                 'username': request.session.get('username'),
                                                 'scale_name_list': scale_name_list,
                                                 'scale_id': scale_id,
                                                 'ymrs_answer': ymrs_answer,
                                                 'order': order,
                                                 })

#获取bprs
def add_bprs(request):
    patient_session_id = request.GET.get('patient_session_id')
    scale_id = tools_config.bprs
    doctor_id = request.session.get('doctor_id')
    patient_id = request.GET.get('patient_id')
    rPatientbprs = scales_dao.get_patient_BPRS_byPatientDetailId(patient_session_id)
    rPatientbprs_new = scales_models.RPatientBprs(patient_session_id=patient_session_id, scale_id=scale_id,
                                                  doctor_id=doctor_id)
    state = judge_other_scale_state(request)
    if rPatientbprs is not None:
        rPatientbprs_new.create_time = rPatientbprs.create_time
        rPatientbprs_new.id = rPatientbprs.id
    rPatientbprs_new = set_attr_by_post(request, rPatientbprs_new)
    scales_dao.add_bprs_database(rPatientbprs_new, state)
    redirect_url = '/scales/get_check_bprs_form?patient_session_id={}&patient_id={}'.format(patient_session_id,
                                                                                            patient_id)
    return redirect(redirect_url)

def get_bprs_form(request):
    patient_session_id = request.GET.get('patient_session_id')
    scale_id = tools_config.bprs
    state = scales_dao.get_scale_state(patient_session_id=patient_session_id, scale_id=scale_id)
    scale_name_list, order = get_scale_order(patient_session_id, scale_id, tools_config.other_test_type)
    bprs_answer = scales_dao.get_patient_BPRS_byPatientDetailId(patient_session_id)
    return render(request, 'nbh/add_bprs.html', {'patient_session_id': patient_session_id,
                                                 'patient_id': request.GET.get('patient_id'),
                                                 'username': request.session.get('username'),
                                                 'scale_name_list': scale_name_list,
                                                 'scale_id': scale_id,
                                                 'bprs_answer': bprs_answer,
                                                 'order': order,
                                                 'state': state})

def get_check_bprs_form(request):
    patient_session_id = request.GET.get('patient_session_id')
    scale_id = tools_config.bprs
    scale_name_list, order = get_scale_order(patient_session_id, scale_id, tools_config.other_test_type)
    bprs_answer = scales_dao.get_patient_BPRS_byPatientDetailId(patient_session_id)
    return render(request, 'nbh/edit_bprs.html', {'patient_session_id': patient_session_id,
                                                 'patient_id': request.GET.get('patient_id'),
                                                 'username': request.session.get('username'),
                                                 'scale_name_list': scale_name_list,
                                                 'scale_id': scale_id,
                                                 'bprs_answer': bprs_answer,
                                                 'order': order,
                                                 })


'''

def check_form(request):
    pass
    # 查看逻辑
    # 读取数据，跳转edit

def form(request):
    pass
    # 开始做，重做，续作
    # 读取数据
    # 数据不存在，开始做，那么直接跳转add
    # 数据存在，续作或者是重做
    #       state==1，重做，add 不读取数据
    #       state==0 续作 add 读取数据

def next_url(request):
    pass
    # state==1，check_form；state==0，form 填充
'''