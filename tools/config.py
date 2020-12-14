"""################ scales 部分 ###################"""
'''#### 获取scales的id ####'''
information_family = 1  # 一般信息表_家庭信息
information_study = 2  # 一般信息表_学习情况
information_health = 3  # 一般信息表_家族史
information_abuse = 4  # 一般信息表_药物滥用
information_other = 5  # 一般信息表_其他信息
chi = 6  # 中国人利手量表
hamd_17 = 7  # 汉密尔顿焦虑量表
hama = 8  # 汉密尔顿焦虑量表
ymrs = 9  # 杨氏躁狂量表
bprs = 10  # 简明精神量表
ybocs = 11  # 耶鲁布朗强迫症严重程度标准量表
bss = 12  # 自杀意念及行为史
hcl_33 = 13  # 33 项轻躁狂症状清单
shaps = 14  # 斯奈斯和汉密尔顿快乐量表
teps = 15  # 快感体验能力量表
ctq_sf = 16  # 儿童期（16岁以前）的成长经历
cerq_c = 17   # 认知情绪调节量表
aslec = 18  # 青少年生活事件量表
s_embu = 19  # 简式父母养育方式问卷表
atq = 20  # 自动思维问卷表


wcst = 21  # 维斯康星卡片分类测验
rbans = 22  # 重复成套性神经心理状态测验系统
fept = 23  # 面孔情绪感知能力测试
vept = 24  # 语音情绪感知能力测试
mediacal_history = 25

scales_html_dict = {1: '/scales/get_family_form',
                    2: '/scales/get_study_form',
                    3: '/scales/get_health_form',
                    4: '/scales/get_abuse_form',
                    5: '/scales/get_other_form',
                    6: '/scales/get_chi_form',
                    7: '/scales/get_hamd_17_form',
                    8: '/scales/get_hama_form',
                    9: '/scales/get_ymrs_form',
                    10: '/scales/get_bprs_form',
                    11: '/scales/get_ybocs_form',
                    12: '/scales/get_bss_form',
                    13: '/scales/get_hcl_33_form',
                    14: '/scales/get_shaps_form',
                    15: '/scales/get_teps_form',
                    16: '/scales/get_ctq_sf_form',
                    17: '/scales/get_cerq_c_form',
                    18: '/scales/get_aslec_form',
                    19: '/scales/get_s_embu_form',
                    20: '/scales/get_atq_form',

                    21: '/scales/get_wcst_form',
                    22: '/scales/get_rbans_form',
                    23: '/scales/get_fept_form',
                    24: '/scales/get_vept_form',
                    25: '/scales/get_patient_medical_history_form'
                    }

general_info_type = 0
other_test_type = 1
self_test_type = 2
cognition_type = 3

general_info_next_url = '/scales/get_other_test_forms'
other_test_next_type_url = '/scales/get_self_test_forms'
self_test_next_type_url = '/scales/get_cognition_forms'
cognition_next_type_url = '/scales/select_scales'

'''###################  disease_type_dict  ###################'''
disease_type_dict = {0: '未诊断', 1: '健康者', 2: '重性抑郁障碍', 3: '焦虑障碍', 4: '双相障碍', 5: '精神分裂症', 6: '强迫症', 7: '高危遗传', 8: '临床高危',
                     9: '抑郁症状',99:'其他诊断'}
