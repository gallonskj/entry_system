from django.conf.urls import url
from . import views
urlpatterns = [
    # url(r'^subjectSelfTestbuild', views.subjectSelfTest_build),
    url(r'^get_self_test_forms', views.get_self_test_forms),
    url(r'^get_other_test_forms', views.get_other_test_forms),
    # 被试详细信息录入
    url(r'^get_general_info_forms', views.get_general_info_forms),
    # 被试认知
    url(r'^get_cognition_forms', views.get_cognition_forms),
    url(r'^select_scales', views.get_select_scales),

    url(r'^get_family_form', views.get_family_form),
    url(r'^get_study_form', views.get_study_form),
    url(r'^get_health_form', views.get_health_form),
    url(r'^get_abuse_form', views.get_abuse_form),
    url(r'^get_other_form', views.get_other_form),
    url(r'^get_chi_form', views.get_chi_form),
    url(r'^get_ybocs_form', views.get_ybocs_form),
    url(r'^get_bss_form', views.get_bss_form),
    url(r'^get_hcl_33_form', views.get_hcl_33_form),
    url(r'^get_shaps_form', views.get_shaps_form),
    url(r'^get_teps_form', views.get_teps_form),
    url(r'^get_ctq_sf_form', views.get_ctq_sf_form),
    url(r'^get_aslec_form', views.get_aslec_form),
    url(r'^get_cerq_c_form', views.get_cerq_c_form),
    url(r'^get_s_embu_form', views.get_s_embu_form),
    url(r'^get_atq_form', views.get_atq_form),
    url(r'^get_hamd_17_form', views.get_hamd_17_form),
    url(r'^get_hama_form', views.get_hama_form),
    url(r'^get_ymrs_form', views.get_ymrs_form),
    url(r'^get_bprs_form', views.get_bprs_form),
    url(r'^get_wcst_form', views.get_wcst_form),
    url(r'^get_rbans_form', views.get_rbans_form),
    url(r'^get_fept_form', views.get_fept_form),
    url(r'^get_vept_form', views.get_vept_form),
    url(r'^get_patient_medical_history_form', views.get_patient_medical_history_form),
    ##################################################

    url(r'^patient_basic_information', views.patient_basic_information),
    url(r'^add_chinesehandle', views.add_chinesehandle),
    url(r'^add_information_study', views.add_information_study),
    url(r'^add_happiness', views.add_happiness),
    url(r'^add_manicsymptom', views.add_manicsymptom),
    url(r'^add_hamd', views.add_hamd),
    url(r'^add_ybo', views.add_ybo),
    url(r'^add_suicide', views.add_suicide),
    url(r'^add_family_info', views.add_family_info),
    url(r'^add_patient_medical_history',views.add_patient_medical_history),
    #####################################################

    url(r'^add_bprs', views.add_bprs),
    url(r'^add_rbans', views.add_rbans),
    url(r'^add_cognitive_emotion', views.add_cognitive_emotion),
    url(r'^add_pleasure', views.add_pleasure),
    url(r'^add_patient_basic_information_health', views.add_patient_basic_information_health),
    ######################################################
    # zrq
    url(r'^add_abuse', views.add_abuse),
    url(r'^add_hama', views.add_hama),
    url(r'^add_growth', views.add_growth),
    url(r'^add_adolescent_events', views.add_adolescent_events),
    url(r'^add_fept', views.add_fept),
    url(r'^add_vept', views.add_vept),

    ######################################################
    url(r'^add_ymrs', views.add_ymrs),
    url(r'^add_sembu', views.add_sembu),
    url(r'^add_atq', views.add_atq),
    url(r'^add_wcst', views.add_wcst),
    url(r'^add_other', views.add_other),
    url(r'^add_study', views.add_information_study),
    url(r'^add_health', views.add_patient_basic_information_health),
    url(r'^skip_scale', views.skip_scale),

]