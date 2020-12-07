# -*- coding: utf-8 -*-
# @Time    : 2020/11/30 16:57
# @Author  : Fang Hanzheng
# @File    : SelfDefinedFilter.py
# @Software: PyCharm


from django import template
from tools import idAssignments
register = template.Library()


@register.filter
def get_item(dictionary, key):
    return dictionary.get(key)

@register.filter(name='calciulateId')
def calciulateId(patient_id):
    return idAssignments.pack_patient_id(patient_id)
