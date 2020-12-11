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