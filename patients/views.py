import scales.models as scale_models
from .models import DPatientDetail, DEthnicity
from django.http import HttpResponse, JsonResponse
from django.shortcuts import render, redirect
from django.views.decorators.csrf import csrf_exempt
import tools.Utils as tools_utils
import tools.idAssignments as tools_idAssignments
import patients.models as patients_models
import scales.models as scales_models
import patients.dao as patients_dao
import tools.config as tools_config
import json
import time

scale_class_dict = {1: [scales_models.RPatientHamd17, [8, 21, 35], ['正常', '可能有抑郁症', '可能是轻或中度抑郁', '可能为严重抑郁']], \
                    2: [scales_models.RPatientHama, [7, 14, 21, 29], ['没有焦虑', '可能有焦虑', '肯定有焦虑', '肯定有明显焦虑', '可能为严重焦虑']], \
                    3: [scales_models.RPatientYmrs, [5, 13, 20, 30], ['正常', '轻度', '中度', '重度', '极重度']], \
                    4: [scales_models.RPatientBprs, [36], ['正常', '偏高']]}


# 获取所有被试基础信息,以及民族字典表信息（创建被试时会使用到）
def get_all_patients_baseinfo(request):
    patients = patients_dao.get_base_info_all()
    username = request.session.get('username')
    nations = DEthnicity.objects.all()
    return render(request, 'manage_patients.html', {"patients": patients,
                                                    'username': username,
                                                    'nations': nations})


# 被试基本信息录入，需要生成id的信息，需要向patient_detail进行信息插入(session==1的信息)
# todo 在进行病人或者复扫创建的时候，需要创建ｒ_patients_scales创建量表完成信息，默认应该是未完成的，需要根据青少年这些去做
def add_patient_baseinfo(request):
    name = request.POST.get("name")
    birth_date = request.POST.get("birth_date")
    sex = request.POST.get("sex")
    nation = request.POST.get("nation")
    doctor_id = request.session.get('doctor_id')
    diagnosis = request.POST.get("diagnosis")
    other_diagnosis = request.POST.get("other_diagnosis")

    # 自动分配id
    patient_id = tools_idAssignments.patient_Id_assignment()
    patient_id, session_id, standard_id = tools_idAssignments.patient_session_id_assignment(patient_id)

    # 基本信息创建
    patient_base_info = patients_models.BPatientBaseInfo(id=patient_id, name=name, sex=sex, birth_date=birth_date,
                                                         nation=nation,
                                                         doctor_id=doctor_id,
                                                         diagnosis=diagnosis,
                                                         other_diagnosis=other_diagnosis)
    patients_dao.add_base_info(patient_base_info)

    # 创建一条复扫记录
    patient_detail = patients_models.DPatientDetail(patient_id=patient_id, session_id=session_id,
                                                    standard_id=standard_id,
                                                    age=tools_utils.calculate_age(birth_date), doctor_id=doctor_id)
    patients_dao.add_patient_detail(patient_detail)
    # 查询需要做的量表,并在r_patient_scales中插入需要做的量表
    scales_list = patients_dao.judgment_scales(patient_detail.id)
    # 为初扫/复扫的病人预先在r_patient_scales中插入多条记录，依据被试需要做的scales_list
    patients_dao.add_rscales(scales_list, patient_detail.id)
    # 页面跳转，select_scales页面
    patient_detail_id = patients_dao.get_patient_detail_byPatientIdAndSessionId(patient_id, session_id).id
    redirect_url = '/scales/select_scales?patient_session_id={}&patient_id={}'.format(str(patient_detail_id),
                                                                                      str(patient_id))
    return redirect(redirect_url)


# 添加复扫信息,需要获取到上次扫描的病人详细信息
def add_patient_followup(request):
    patient_id = request.GET.get('patient_id')
    doctor_id = request.session.get('doctor_id')
    patient_baseinfo = patients_dao.get_base_info_byPK(patient_id)
    patient_id, session_id, standard_id = tools_idAssignments.patient_session_id_assignment(patient_baseinfo.id)
    patient_detail = patients_models.DPatientDetail(patient_id=patient_id, session_id=session_id,
                                                    standard_id=standard_id,
                                                    age=tools_utils.calculate_age(str(patient_baseinfo.birth_date)),
                                                    doctor_id=doctor_id)

    patients_dao.add_patient_detail(patient_detail)
    # 获取创建的复扫信息自增id
    patient_detail_id = patients_dao.get_patient_detail_byPatientIdAndSessionId(patient_id, session_id).id
    # 查询需要做的量表,并在r_patient_scales中插入需要做的量表
    scales_list = patients_dao.judgment_scales(patient_detail_id)
    # 为初扫/复扫的病人预先在r_patient_scales中插入多条记录，依据被试需要做的scales_list
    patients_dao.add_rscales(scales_list, patient_detail.id)
    # 将上一次的detail信息返回到前台
    redirect_url = '/scales/select_scales?patient_session_id={}&patient_id={}'.format(str(patient_detail_id),
                                                                                      str(patient_id))
    return redirect(redirect_url)


#  todo 所有病人详细信息获取
def get_patient_detail(request):
    if request.GET:

        patient_id = request.GET.get("patient_id")
        patient_baseinfo = patients_dao.get_base_info_byPK(patient_id)
        patient_detail_list = DPatientDetail.objects.all().select_related('patient__doctor').filter(
            patient_id=patient_id).values('id', 'patient__id', 'session_id', 'standard_id', 'create_time', 'diagnosis',
                                          'doctor__name')
        diagnosis_type = DPatientDetail.DIAGNOSIS_TYPE
        for dic in patient_detail_list:
            dic['diagnosis'] = diagnosis_type[dic['diagnosis']][1]
        print(patient_detail_list)
        test_states = scales_models.RPatientScales.objects.all().select_related('patient_session_id__scale'). \
            filter(patient_session_id__patient=patient_baseinfo).values(
            'patient_session_id__session_id',
            'scale_id',
            'scale__scale_name',
            'state',
            'end_time'
        )
        ordered_dic = {}
        for test_state in test_states:
            if test_state['patient_session_id__session_id'] not in ordered_dic:
                ordered_dic[test_state['patient_session_id__session_id']] = {test_state['scale_id']: test_state}
            else:
                ordered_dic[test_state['patient_session_id__session_id']][test_state['scale_id']] = test_state
        nation_list = patients_dao.get_DEthnicity_all()
        return render(request, 'patient_detail.html',
                      {
                          'patient_id': 'NN_' + str(patient_baseinfo.id).zfill(8),
                          'name': patient_baseinfo.name,
                          'birth_date': patient_baseinfo.birth_date.strftime('%Y-%m-%d'),
                          'sex': patient_baseinfo.sex,
                          'nation': patient_baseinfo.nation,
                          "patient_detail_res": patient_detail_list,
                          "username": request.session.get('username'),
                          "patients_states": ordered_dic,
                          'test': ordered_dic,
                          'nation_list': nation_list,
                      })
    else:
        return render(request, 'patient_detail.html', {"username": request.session.get("username")})


# 删除病人信息
def del_patient(request):
    if request.GET:
        patient_id = request.GET.get("patient_id")
        patients_dao.del_patient_base_info_byPK(patient_id)
        # 后续添加删除成功的展示页面，然后自动跳转回subjectmanage页面
        return redirect('/patients/get_all_patients_baseinfo')
    else:
        return redirect('/patients/get_all_patients_baseinfo')


# 删除一条复扫记录
def del_followup(request):
    patient_id = request.GET.get("patient_id")
    patient_session_id = request.GET.get("patient_session_id")
    patient_detail = DPatientDetail.objects.all().select_related('doctor').filter(
        pk=patient_session_id)
    if patient_detail.count() == 1:
        # 只有创建该条记录的用户才能够删除本条记录
        if patient_detail.first().doctor.username == request.session.get('username'):
            patient_detail.first().delete()
    return redirect('/patients/get_patient_detail?patient_id=' + patient_id)


# 新建被试获取自动生成的id
@csrf_exempt
def get_generateId(id):
    patient_id = tools_idAssignments.patient_Id_assignment()
    standard_id = tools_idAssignments.generate_standard_id(patient_id, 1)
    data = {}
    data['standard_id'] = standard_id
    return JsonResponse(data)


# 被试详细信息显示
def subjectDetailInfo(request):
    return render(request, 'forms_general_info.html', {"username": request.session.get("username")})


def patient_statistics(request):
    patients_n = 0
    hc_n = 0
    mdd_n = 0
    bd_n = 0
    sz_n = 0
    man_age_list = []
    woman_age_list = []
    man_education_list = []
    woman_education_list = []
    all_patient_base_info = patients_dao.get_base_info_all()
    for patient_base_info in all_patient_base_info:
        patient_id = patient_base_info.__getattribute__('id')
        sex = patient_base_info.__getattribute__('sex')
        patient_detail_info = DPatientDetail.objects.filter(patient_id=patient_id)
        if len(patient_detail_info) > 0:
            age = patient_detail_info[0].__getattribute__('age')
            education = patient_detail_info[0].__getattribute__('education')
            if sex == 0:
                if age is not None:
                    woman_age_list.append(age)
                if education is not None:
                    woman_education_list.append(education)
            elif sex == 1:
                if age is not None:
                    man_age_list.append(age)
                if education is not None:
                    man_education_list.append(education)

            # diagnosis = patient_detail_info[0].__getattribute__('diagnosis')
            diagnosis = patient_detail_info[0].patient.diagnosis
            if diagnosis == 'HC':
                hc_n += 1
            else:
                patients_n += 1
                # 0：未诊断
                # 1：健康者
                # 2：重性抑郁障碍
                # 3：焦虑障碍
                # 4：双相障碍
                # 5：精神分裂症
                # 6：强迫症
                # 7：高危遗传
                # 8：临床高危
                # 9：抑郁症状
                if diagnosis == 2:
                    mdd_n += 1
                elif diagnosis == 4:
                    bd_n += 1
                elif diagnosis == 5:
                    sz_n += 1
        else:
            continue

    man_age_list = [12, 15, 32, 44, 56, 21, 16, 18]
    woman_age_list = [23, 14, 17, 29, 56, 44, 32, 45, 36, 65]
    man_education_list = [12, 15, 32, 44, 56, 21, 16, 18, 22, 5, 2, 4, 8]
    woman_education_list = [23, 14, 17, 29, 56, 44, 32, 45, 36, 33, 2, 1, 17, 44, 2]
    patients_n = 123
    hc_n = 65
    mdd_n = 65
    bd_n = 35
    sz_n = 23

    subject_n = patients_n + hc_n
    woman_n = len(woman_age_list)
    man_n = len(man_age_list)

    # age
    man_age_num_list = []
    woman_age_num_list = []
    age_labels_list = []
    for i in range(1, 8):
        age_index = (i + 1) * 10
        man_age_num = 0
        woman_age_num = 0
        for age in man_age_list:
            if age_index > age >= i * 10:
                man_age_num += 1
        for age in woman_age_list:
            if age_index > age >= i * 10:
                woman_age_num += 1
        man_age_num_list.append(man_age_num)
        woman_age_num_list.append(woman_age_num)
        age_labels_list.append('%d-%d' % (i * 10, age_index))

    # education
    man_education_num_list = []
    woman_education_num_list = []
    education_labels_list = []
    for i in range(0, 5):
        education_index = (i + 1) * 10
        man_education_num = 0
        woman_education_num = 0
        for education in man_education_list:
            if education_index > education >= i * 10:
                man_education_num += 1
        for education in woman_education_list:
            if education_index > education >= i * 10:
                woman_education_num += 1
        man_education_num_list.append(man_education_num)
        woman_education_num_list.append(woman_education_num)
        education_labels_list.append('%d-%d' % (i * 10, education_index))

    patients = patients_dao.get_patient_detail_all()
    for patient in patients:
        doctor = patients_dao.get_user_byPK(patient.doctor_id)
        search_scales = patients_dao.get_patient_scales_byPatientDetailId(patient.id)
        base_info = patients_dao.get_base_info_byPK(patient.patient_id)

        # patient.name = base_info['name']
        # patient.sex = base_info['sex']
        # patient.doctor_id = doctor['username']
        patient.name = base_info.name
        patient.sex = base_info.sex
        print("###########", doctor)
        patient.doctor_id = doctor.name

        # if patient.diagnosis == 1:
        #     patient.diagnosis = 'MDD'
        # elif patient.diagnosis == 2:
        #     patient.diagnosis = 'BD'
        # elif patient.diagnosis == 3:
        #     patient.diagnosis = 'SZ'
        patient.patient.diagnosis = tools_config.disease_type_dict[patient.patient.diagnosis]

        scale_id_list = []
        scale_score_list = []
        if len(search_scales) > 0:
            for scale in search_scales:
                if scale.state == 0:
                    continue
                scale_id_list.append(scale.scale_id)

                scale_class = scale_class_dict[scale.scale_id][0]
                if len(scale_class.objects.filter(patient_session_id=patient.id).values()) > 0:
                    scale_info = scale_class.objects.filter(patient_session_id=patient.id).values()[0]
                    scale_score_list.append(scale_info['total_score'])

        patient.scale_id_list = scale_id_list
        patient.scale_score_list = scale_score_list

    scales = patients_dao.get_scales_all()
    all_scale_id_list = []
    all_scale_name_list = []
    all_scale_value_range_list = []
    all_scale_value_str_range_list = []
    for scale in scales:
        all_scale_id_list.append(scale.id)
        all_scale_name_list.append(scale.scale_name)
        if scale.id in scale_class_dict.keys():
            all_scale_value_range_list.append(scale_class_dict[scale.id][1])
            all_scale_value_str_range_list.append(scale_class_dict[scale.id][2])

    print('-' * 100)
    print(scale_score_list)
    return render(request, 'patient_statistics.html', {
        'username': request.session.get('username'),
        'man_age_num_list': json.dumps(man_age_num_list),
        'woman_age_num_list': json.dumps(woman_age_num_list),
        'age_labels_list': json.dumps(age_labels_list),
        'man_education_num_list': json.dumps(man_education_num_list),
        'woman_education_num_list': json.dumps(woman_education_num_list),
        'education_labels_list': json.dumps(education_labels_list),
        'patients_n': patients_n,
        'hc_n': hc_n,
        'mdd_n': mdd_n,
        'bd_n': bd_n,
        'sz_n': sz_n,
        'subject_n': subject_n,
        'woman_n': woman_n,
        'man_n': man_n,
        'patients': patients,
        'scales': scales,
        'all_scale_id_list': json.dumps(all_scale_id_list),
        'all_scale_name_list': json.dumps(all_scale_name_list),
        'all_scale_value_range_list': json.dumps(all_scale_value_range_list),
        'all_scale_value_str_range_list': json.dumps(all_scale_value_str_range_list)
    })


def test_view(request):
    dic = request.session.get('history')
    return HttpResponse(str(dic))
