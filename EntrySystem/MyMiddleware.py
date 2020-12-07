# -*- coding: utf-8 -*-
# @Time    : 2020/11/5 10:31
# @Author  : Fang Hanzheng
# @File    : MyMiddleware.py
# @Software: PyCharm
from django.utils.deprecation import MiddlewareMixin
from django.shortcuts import redirect, render
from django.utils.deprecation import MiddlewareMixin
import re

white_list = ['/login/', "/logout/"]

# 中间件 核对当前request中session的active是否为True
# 再添加一下doctor_id


class AuthMiddleWare(MiddlewareMixin):
    def process_request(self, request):
        # 如果是访问白名单 则不需要验证 直接return
        destination_url = request.path_info
        if destination_url == '/':
            return
        # 如果访问的不是白名单 则需要验证active状态 True就什么都不做
        if request.session.get('active', False):
            return
        # active为未激活状态 重定向到登陆页面 返回错误信息
        else:
            error = 'You need to login first !'
            return redirect('/')
