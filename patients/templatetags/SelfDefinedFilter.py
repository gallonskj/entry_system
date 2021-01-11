# -*- coding: utf-8 -*-
# @Time    : 2020/11/30 16:57
# @Author  : Fang Hanzheng
# @File    : SelfDefinedFilter.py
# @Software: PyCharm


from django import template
from tools import idAssignments
from tools import config
register = template.Library()


@register.filter
def get_item(dictionary, key):
    return dictionary.get(key)

@register.filter(name='calciulateId')
def calciulateId(patient_id):
    return idAssignments.pack_patient_id(patient_id)

@register.filter(name='processNone')
def processNone(value):
    if value is None:
        return ''
    return value

@register.filter(name='get_diagnosis_by_dict')
def get_diagnosis_by_dict(patient):
    if patient['patient_id__diagnosis'] is None:
        return '--'
    if patient['patient_id__diagnosis'] == 99:
        return patient['patient_id__other_diagnosis']
    else:
        return config.disease_type_dict[patient['patient_id__diagnosis']]

@register.filter(name='get_diagnosis_by_object')
def get_diagnosis_by_object(patient):
    if patient.diagnosis is None:
        return '--'
    if patient.diagnosis == 99:
        return patient.other_diagnosis
    else:
        return config.disease_type_dict[patient.diagnosis]

@register.filter(name='get_scale_url')
def get_scale_url(scale_detail):
    scale_id = scale_detail['scale_id']
    patient_session_id = scale_detail['patient_session_id']
    patient_id = scale_detail['patient_session_id__patient_id']
    next_page_url = config.scales_html_dict[int(scale_id)]
    redirect_url = '{}?patient_session_id={}&patient_id={}'.format(next_page_url, str(patient_session_id), str(patient_id))
    return redirect_url


@register.filter(name='check_scale')
def check_scale(scale_detail):
    scale_id = scale_detail['scale_id']
    patient_session_id = scale_detail['patient_session_id']
    patient_id = scale_detail['patient_session_id__patient_id']
    next_page_url = config.check_scales_html_dict[int(scale_id)]
    redirect_url = '{}?patient_session_id={}&patient_id={}'.format(next_page_url, str(patient_session_id), str(patient_id))
    return redirect_url

@register.filter(name='processNone1')
def processNone1(value):
    if value is None:
        return 'null'
    return value
#进入个人一般信息重做页面
@register.filter(name='get_baseinfo_redo_scale_url')
def get_baseinfo_redo_scale_url(scale_detail):
    scale_id = scale_detail['scale_id']
    patient_session_id = scale_detail['patient_session_id']
    patient_id = scale_detail['patient_session_id__patient_id']
    next_page_url = config.scales_html_dict[int(scale_id)]
    redirect_url = '{}?patient_session_id={}&patient_id={}&do_type=0'.format(next_page_url, str(patient_session_id), str(patient_id))
    return redirect_url
#进入个人一般信息查看页面
@register.filter(name='get_baseinfo_check_scale_url')
def get_baseinfo_check_scale_url(scale_detail):
    scale_id = scale_detail['scale_id']
    patient_session_id = scale_detail['patient_session_id']
    patient_id = scale_detail['patient_session_id__patient_id']
    next_page_url = config.scales_html_dict[int(scale_id)]
    redirect_url = '{}?patient_session_id={}&patient_id={}&do_type=1'.format(next_page_url, str(patient_session_id), str(patient_id))
    return redirect_url