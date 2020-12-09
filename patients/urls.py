from django.contrib import admin
from django.urls import path, re_path
from . import views
from django.conf.urls import url

urlpatterns = [

    # 创建基本信息
    url(r'^add_patient_baseinfo', views.add_patient_baseinfo),
    # 创建复扫基本信息
    url(r'^add_patient_followup', views.add_patient_followup),
    # 获取所有病人信息
    url(r'^get_all_patients_baseinfo', views.get_all_patients_baseinfo),
    # 获取病人详细信息
    url(r'^get_patient_detail', views.get_patient_detail),
    url(r'^patient_statistics', views.patient_statistics, name='patient_statistics'),
    url(r'^get_generateId_and_nation', views.get_generateId),
    url(r'^get_select_scales', views.get_select_scales),
    url(r'^del_patient', views.del_patient),
    url(r'^del_followup', views.del_followup),
    # 貌似未使用
    url(r'^subjectDetailInfo', views.subjectDetailInfo),
    url(r'', views.get_all_patients_baseinfo),

]
