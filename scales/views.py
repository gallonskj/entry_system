from django.shortcuts import render, redirect
import json
import scales.dao as scales_dao
import scales.models as scales_models
from tools import config
# Create your views here.

'''
获取表单
'''


# 被试 一般资料 录入
def get_general_info_forms(request):
    patient_session_id = request.GET.get('patient_session_id')
    patient_id = request.GET.get('patient_id')
    # 根据do_scale_type，获取scale最小的id
    # todo　redirect传递问题
    min_unfinished_scale = scales_dao.get_min_unfinished_scale(config.general_info_type,patient_session_id)
    if min_unfinished_scale is None:
        return redirect(get_self_test_forms)
    next_page_url = config.scales_html_dict[min_unfinished_scale]
    return render(request, next_page_url, {'patient_session_id': patient_session_id,
                                                       'patient_id': patient_id,
                                                       "username": request.session.get('username')
                                                       })


def get_other_test_forms(request):
    patient_session_id = request.GET.get('patient_session_id')
    patient_id = request.GET.get('patient_id')
    # 根据do_scale_type，获取scale最小的id
    # todo　redirect传递问题
    min_unfinished_scale = get_min_unfinished_scale(config.general_info_type,patient_session_id)
    if min_unfinished_scale is None:
        return redirect(get_other_test_forms)
    next_page_url = config.scales_html_dict[min_unfinished_scale]
    return render(request, 'forms_other_test.html', {'patient_session_id': patient_session_id,
                                                     'patient_id': patient_id,
                                                     "username": request.session.get('username')
                                                     })


# 被试 认知测试 录入
def get_cognition_forms(request):
    patient_session_id = request.GET.get('patient_session_id')
    patient_id = request.GET.get('patient_id')
    # 根据do_scale_type，获取scale最小的id
    # todo　redirect传递问题
    min_unfinished_scale = get_min_unfinished_scale(config.general_info_type,patient_session_id)
    if min_unfinished_scale is None:
        return redirect(get_other_test_forms)
    next_page_url = config.scales_html_dict[min_unfinished_scale]
    return render(request, 'forms_cognition.html', {'patient_session_id': patient_session_id,
                                                    'patient_id': patient_id,
                                                    "username": request.session.get('username')
                                                    })


def get_self_test_forms(request):
    patient_session_id = request.GET.get('patient_session_id')
    patient_id = request.GET.get('patient_id')
    # 根据do_scale_type，获取scale最小的id
    # todo　redirect传递问题
    min_unfinished_scale = get_min_unfinished_scale(config.general_info_type,patient_session_id)
    if min_unfinished_scale is None:
        return redirect(get_other_test_forms)
    next_page_url = config.scales_html_dict[min_unfinished_scale]
    return render(request, 'forms_self_test.html', {'patient_session_id': patient_session_id,
                                                    'patient_id': patient_id,
                                                    "username": request.session.get('username')
                                                    })


'''
量表具体操作
'''


def add_ybo(request):
    scales_dao.dao_add_ybo(request)
    patient_session_id = request.GET.get('patient_session_id')
    patient_id = request.GET.get('patient_id')
    min_unfinished_scale = scales_dao.get_min_unfinished_scale(config.other_test_type,patient_session_id)
    next_url = config.scales_html_dict[min_unfinished_scale]
    redirect_yrl = '/scales/get_self_test_forms?patient_session_id={}&patient_id={}'.format(str(patient_session_id),str(patient_id))
    return redirect(redirect_yrl)


def add_suicide(request):
    scales_dao.dao_add_suicide(request)
    patient_session_id = request.GET.get('patient_session_id')
    patient_id = request.GET.get('patient_id')
    redirect_yrl = '/scales/get_self_test_forms?patient_session_id={}&patient_id={}'.format(str(patient_session_id),
                                                                                            str(patient_id))
    return redirect(redirect_yrl)


def add_family_info(request):
    scales_dao.dao_add_family_info(request)
    patient_session_id = request.GET.get('patient_session_id')
    patient_id = request.GET.get('patient_id')
    redirect_yrl = '/scales/get_general_info_forms?patient_session_id={}&patient_id={}'.format(str(patient_session_id),
                                                                                            str(patient_id))
    return redirect(redirect_yrl)


#########################################################
def patient_basic_information(request):
    return render(request, 'patient_basic_information.html')


def add_hamd(request):
    scales_dao.add_hamd_database(request)
    patient_session_id = request.GET.get('patient_session_id')
    patient_id = request.GET.get('patient_id')
    redirect_yrl = '/scales/get_other_test_forms?patient_session_id={}&patient_id={}'.format(str(patient_session_id),
                                                                                            str(patient_id))
    return redirect(redirect_yrl)


def add_information_study(request):
    scales_dao.add_information_study_database(request)
    patient_session_id = request.GET.get('patient_session_id')
    patient_id = request.GET.get('patient_id')
    redirect_yrl = '/scales/get_general_info_forms?patient_session_id={}&patient_id={}'.format(str(patient_session_id),
                                                                                               str(patient_id))
    return redirect(redirect_yrl)


def add_chinesehandle(request):
    scales_dao.add_chinesehandle_database(request)
    patient_session_id = request.GET.get('patient_session_id')
    patient_id = request.GET.get('patient_id')
    patient_session_id = request.GET.get('patient_session_id')
    patient_id = request.GET.get('patient_id')
    redirect_yrl = '/scales/get_general_info_forms?patient_session_id={}&patient_id={}'.format(str(patient_session_id),
                                                                                               str(patient_id))
    return redirect(redirect_yrl)

def add_manicsymptom(request):
    scales_dao.add_mainicsymptom_database(request)
    patient_session_id = request.GET.get('patient_session_id')
    patient_id = request.GET.get('patient_id')
    redirect_yrl = '/scales/get_self_test_forms?patient_session_id={}&patient_id={}'.format(str(patient_session_id),
                                                                                            str(patient_id))
    return redirect(redirect_yrl)


def add_happiness(request):
    scales_dao.add_happiness_database(request)
    patient_session_id = request.GET.get('patient_session_id')
    patient_id = request.GET.get('patient_id')
    redirect_yrl = '/scales/get_self_test_forms?patient_session_id={}&patient_id={}'.format(str(patient_session_id),
                                                                                            str(patient_id))
    return redirect(redirect_yrl)


#########################################################
#########################################################syh
def add_cognitive_emotion(request):
    scales_dao.add_cognitive_emotion_database(request)
    patient_session_id = request.GET.get('patient_session_id')
    patient_id = request.GET.get('patient_id')
    redirect_yrl = '/scales/get_self_test_forms?patient_session_id={}&patient_id={}'.format(str(patient_session_id),
                                                                                            str(patient_id))
    return redirect(redirect_yrl)

def add_pleasure(request):
    scales_dao.add_pleasure_database(request)
    patient_session_id = request.GET.get('patient_session_id')
    patient_id = request.GET.get('patient_id')
    redirect_yrl = '/scales/get_self_test_forms?patient_session_id={}&patient_id={}'.format(str(patient_session_id),
                                                                                            str(patient_id))
    return redirect(redirect_yrl)


def add_bprs(request):
    scales_dao.add_bprs_database(request)
    patient_session_id = request.GET.get('patient_session_id')
    patient_id = request.GET.get('patient_id')
    redirect_yrl = '/scales/get_other_test_forms?patient_session_id={}&patient_id={}'.format(str(patient_session_id),
                                                                                               str(patient_id))
    return redirect(redirect_yrl)


def add_rbans(request):
    scales_dao.add_rbans_database(request)
    patient_session_id = request.GET.get('patient_session_id')
    patient_id = request.GET.get('patient_id')
    redirect_yrl = '/scales/get_cognition_forms?patient_session_id={}&patient_id={}'.format(str(patient_session_id),
                                                                                            str(patient_id))
    return redirect(redirect_yrl)


def add_patient_basic_information_health(request):
    scales_dao.add_patient_basic_information_health_database(request)
    patient_session_id = request.GET.get('patient_session_id')
    patient_id = request.GET.get('patient_id')
    redirect_yrl = '/scales/get_general_info_forms?patient_session_id={}&patient_id={}'.format(str(patient_session_id),
                                                                                               str(patient_id))
    return redirect(redirect_yrl)


#########################################################syh
################################################zrq


# zrq----------------------------------------------
def add_abuse(request):
    scales_dao.add_abuse_database(request)
    patient_session_id = request.GET.get('patient_session_id')
    patient_id = request.GET.get('patient_id')
    redirect_yrl = '/scales/get_general_info_forms?patient_session_id={}&patient_id={}'.format(str(patient_session_id),
                                                                                            str(patient_id))
    return redirect(redirect_yrl)


def add_hama(request):
    scales_dao.add_hama_database(request)
    patient_session_id = request.GET.get('patient_session_id')
    patient_id = request.GET.get('patient_id')
    redirect_yrl = '/scales/get_other_test_forms?patient_session_id={}&patient_id={}'.format(str(patient_session_id),
                                                                                               str(patient_id))
    return redirect(redirect_yrl)

#    return redirect('/patients')

def add_growth(request):
    scales_dao.add_growth_database(request)
    patient_session_id = request.GET.get('patient_session_id')
    patient_id = request.GET.get('patient_id')
    redirect_yrl = '/scales/get_self_test_forms?patient_session_id={}&patient_id={}'.format(str(patient_session_id),
                                                                                            str(patient_id))
    return redirect(redirect_yrl)


def add_adolescent_events(request):
    scales_dao.add_adolescent_events_database(request)
    patient_session_id = request.GET.get('patient_session_id')
    patient_id = request.GET.get('patient_id')
    redirect_yrl = '/scales/get_self_test_forms?patient_session_id={}&patient_id={}'.format(str(patient_session_id),
                                                                                            str(patient_id))
    return redirect(redirect_yrl)


def add_fept(request):
    scales_dao.add_fept_database(request)
    patient_session_id = request.GET.get('patient_session_id')
    patient_id = request.GET.get('patient_id')
    redirect_yrl = '/scales/get_cognition_forms?patient_session_id={}&patient_id={}'.format(str(patient_session_id),
                                                                                            str(patient_id))
    return redirect(redirect_yrl)

def add_vept(request):
    scales_dao.add_vept_database(request)
    patient_session_id = request.GET.get('patient_session_id')
    patient_id = request.GET.get('patient_id')
    redirect_yrl = '/scales/get_cognition_forms?patient_session_id={}&patient_id={}'.format(str(patient_session_id),
                                                                                            str(patient_id))
    return redirect(redirect_yrl)


################################################

def add_ymrs(request):
    scales_dao.add_ymrs_database(request)
    patient_session_id = request.GET.get('patient_session_id')
    patient_id = request.GET.get('patient_id')
    redirect_yrl = '/scales/get_other_test_forms?patient_session_id={}&patient_id={}'.format(str(patient_session_id),
                                                                                             str(patient_id))
    return redirect(redirect_yrl)

def add_sembu(request):
    scales_dao.add_sembu_database(request)
    patient_session_id = request.GET.get('patient_session_id')
    patient_id = request.GET.get('patient_id')
    redirect_yrl = '/scales/get_self_test_forms?patient_session_id={}&patient_id={}'.format(str(patient_session_id),
                                                                                            str(patient_id))
    return redirect(redirect_yrl)

def add_atq(request):
    scales_dao.add_atq_database(request)
    patient_session_id = request.GET.get('patient_session_id')
    patient_id = request.GET.get('patient_id')
    redirect_yrl = '/scales/get_self_test_forms?patient_session_id={}&patient_id={}'.format(str(patient_session_id),
                                                                                            str(patient_id))
    return redirect(redirect_yrl)

def add_wcst(request):
    scales_dao.add_wcst_database(request)
    patient_session_id = request.GET.get('patient_session_id')
    patient_id = request.GET.get('patient_id')
    redirect_yrl = '/scales/get_cognition_forms?patient_session_id={}&patient_id={}'.format(str(patient_session_id),
                                                                                            str(patient_id))
    return redirect(redirect_yrl)

def add_other(request):
    scales_dao.add_other_database(request)
    patient_session_id = request.GET.get('patient_session_id')
    patient_id = request.GET.get('patient_id')
    redirect_yrl = '/scales/get_general_info_forms?patient_session_id={}&patient_id={}'.format(str(patient_session_id),
                                                                                               str(patient_id))
    return redirect(redirect_yrl)