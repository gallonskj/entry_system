'''from django.http import HttpResponse
from django.shortcuts import render, redirect
from django.views.decorators.csrf import csrf_exempt

from .models import BPatientAppointment

# Create your views here.
def getIndex(request):
    #return render(request,'index.html')
    return render(request,'index.html')


def patient_Detail(request):
    return render(request,'patientDetail.html')


def patient_edit(request):
    return render(request,'patient_edit.html')

@csrf_exempt
def addPatient(request):
    date = request.POST.get('date')
    name = request.POST.get('name')
    sex = request.POST.get('sex')
    birthDate = request.POST.get('birth_date')
    education = request.POST.get('education')
    occupation = request.POST.get('occupation')
    emotionState = request.POST.get('emotional_state')
    phone = request.POST.get('phone')
    note = request.POST.get('note')

    patientAppoientment = BPatientAppointment(date=date,name=name,sex=sex,birth_date=birthDate,education=education,occupation=occupation,
                                              emotional_state=emotionState,phone=phone,note=note)
    patientAppoientment.save()
    return redirect('/patients')

def getPatient(request):
    res = BPatientAppointment.objects.all()
    return render(request, 'index.html', {'res':res})
'''
import json
from django.db.models import Q
from django.http import HttpResponse, JsonResponse
from django.shortcuts import render, redirect
from django.views.decorators.csrf import csrf_exempt

import scales.models as scales_models
import tools.Utils as tools_utils
import tools.idAssignments as tools_idAssignments
import users.models as users_models
import patients.models as patients_models
import scales.models as scales_models
import patients.dao as patient_dao

import json

scale_class_dict = {1:[scales_models.RPatientHama,10],2:[scales_models.RPatientHamd17,20],3:[scales_models.RPatientYmrs,15]}
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
disease_type_dict = {0:'未诊断',1:'健康者',2:'重性抑郁障碍',3:'焦虑障碍',4:'双相障碍',5:'精神分裂症',6:'强迫症',7:'高危遗传',8:'临床高危',9:'抑郁症状'}

# 获取所有被试基础信息,以及民族字典表信息（创建被试时会使用到）
def get_all_patients_baseinfo(request):
    patients =patient_dao.get_base_info_all()
    username = request.session.get('username')
    nations = patient_dao.get_DEthnicity_all()
    return render(request, 'manage_patients.html', {"patients": patients, 'username': username, 'nations': nations})


# 被试基本信息录入，需要生成id的信息，需要向patient_detail进行信息插入(session==1的信息)
# todo 在进行病人或者复扫创建的时候，需要创建ｒ_patients_scales创建量表完成信息，默认应该是未完成的，需要根据青少年这些去做
def add_patient_baseinfo(request):
    # 获取自动生成的标准id，并将标准id 拆分成patient_id以及session_id
    standard_id = request.POST.get("standard_id")
    patient_id, session_id = tools_idAssignments.getIdAndSession(standard_id)
    name = request.POST.get("name")
    birth_date = request.POST.get("birth_date")
    sex = request.POST.get("sex")
    nation = request.POST.get("nation")
    doctor_id = request.session.get('doctor_id')
    # 基本信息创建
    patient_base_info = patients_models.BPatientBaseInfo(id=patient_id, name=name, sex=sex, birth_date=birth_date, nation=nation,
                                         doctor_id=doctor_id)
    patient_dao.add_base_info(patient_base_info)

    # 创建一条复扫记录
    patient_detail = patients_models.DPatientDetail(patient_id=patient_id, session_id=session_id, standard_id=standard_id,
                                    age=tools_utils.calculate_age(birth_date), doctor_id=doctor_id, diagnosis=0)
    patient_dao.add_patient_detail(patient_detail)
    # 查询需要做的量表,并在r_patient_scales中插入需要做的量表
    scales_list = patient_dao.judgment_scales(patient_detail.id)
    # 为初扫/复扫的病人预先在r_patient_scales中插入多条记录，依据被试需要做的scales_list
    patient_dao.add_rscales(scales_list, patient_detail.id)

    #获取页面需要的参数
    patient = patient_dao.get_base_info_byPK(patient_id)
    patient_detail_id = patient_dao.get_patient_detail_byPatientIdAndSessionId(patient_id,session_id).id
    return render(request, 'select_scales.html', {'patient': patient,
                                                  'patient_session_id': patient_detail_id,
                                                  "username": request.session.get('username')
                                                  })

def get_select_scales(request):
    patient_session_id = request.GET.get('patient_session_id')
    patient_id = request.GET.get('patient_id')
    patient = patient_dao.get_base_info_byPK(patient_id)
    return render(request, 'select_scales.html', {'patient': patient,
                                                  'patient_id':patient.id,
                                                  'patient_session_id': patient_session_id,
                                                  "username": request.session.get('username')
                                                  })


# 添加复扫信息
def add_patient_followup(request):
    patient_id = request.GET.get('patient_id')
    doctor_id = request.session.get('doctor_id')
    patient_baseinfo = patient_dao.get_base_info_byPK(patient_id)
    patient_id, session_id, standard_id = tools_idAssignments.patient_session_id_assignment(patient_baseinfo.id)
    patient_detail = patients_models.DPatientDetail(patient_id=patient_id, session_id=session_id, standard_id=standard_id,
                                    age=tools_utils.calculate_age(str(patient_baseinfo.birth_date)), doctor_id=doctor_id, diagnosis=0)
    patient_dao.add_patient_detail(patient_detail)
    # 获取创建的复扫信息自增id
    patient_detail_id = patient_dao.get_patient_detail_byPatientIdAndSessionId(patient_id,session_id).id
    # 查询需要做的量表,并在r_patient_scales中插入需要做的量表
    scales_list = patient_dao.judgment_scales(patient_detail_id)
    # 为初扫/复扫的病人预先在r_patient_scales中插入多条记录，依据被试需要做的scales_list
    patient_dao.add_rscales(scales_list, patient_detail.id)
    # 将上一次的detail信息返回到前台
    patient_detail_last = patient_dao.get_patient_detail_last_byPatientId(patient_id)
    return render(request, 'select_scales.html',{'patient': patient_baseinfo,
                                                 'patient_session_id': patient_detail_id,
                                                 "username": request.session.get('username'),
                                                 "patient_detail_last":patient_detail_last
                                                 })


#  todo 所有病人详细信息获取
def get_patient_detail(request):
    if request.GET:
        patient_id = request.GET.get("patient_id")
        patient_baseinfo = patient_dao.get_base_info_byPK(patient_id)
        patient_detail_list =patient_dao.get_patient_detail_byForeignPatientId(patient_id)
        return render(request, 'patient_detail.html',
                      {'patient_id': patient_baseinfo.id,
                       'name': patient_baseinfo.name,
                       'birth_date': patient_baseinfo.birth_date,
                       'sex': patient_baseinfo.sex,
                       'nation': patient_baseinfo.nation,
                       "patient_detail_res": patient_detail_list,
                       "username": request.session.get('username')
                       })
    else:
        return render(request, 'patient_detail.html')


# 删除病人信息
def del_patient(request):
    if request.GET:
        patient_id = request.GET.get("patient_id")
        patient_dao.del_patient_base_info_byPK(patient_id)
        # 后续添加删除成功的展示页面，然后自动跳转回subjectmanage页面
        return redirect('/patients/get_all_patients_baseinfo')
    else:
        return redirect('/patients/get_all_patients_baseinfo')


# 删除一条复扫记录
def del_followup(request):
    patient_id = request.GET.get("patient_id")
    patient_session_id = request.GET.get("patient_session_id")
    from_page = request.GET.get("from_page")
    patient_dao.del_patient_detail_byPK(patient_session_id)
    if from_page is None:
        return redirect('/patients/subjectInfoInput?id=' + patient_id)
    elif from_page == 'patient_statistics':
        return redirect(patient_statistics)


# 新建被试获取自动生成的id
@csrf_exempt
def get_generateId_and_nation(id):
    patient_id = tools_idAssignments.patient_Id_assignment()
    standard_id = tools_idAssignments.generate_standard_id(patient_id, 1)
    data = {}
    data['standard_id'] = standard_id
    return JsonResponse(data)


# 被试详细信息显示
def subjectDetailInfo(request):
    return render(request, 'forms_general_info.html', {"username": request.session.get("username")})


@csrf_exempt
def addPatient(request):
    date = request.POST.get('date')
    name = request.POST.get('name')
    sex = request.POST.get('sex')
    birthDate = request.POST.get('birth_date')
    education = request.POST.get('education')
    occupation = request.POST.get('occupation')
    emotionState = request.POST.get('emotional_state')
    phone = request.POST.get('phone')
    note = request.POST.get('note')
    patientAppoientment = patients_models.DPatientAppointment(date=date, name=name, sex=sex, birth_date=birthDate, education=education,
                                              occupation=occupation, emotional_state=emotionState, phone=phone,
                                              note=note)
    patient_dao.add_patient_appointment(patientAppoientment)
    return redirect('/patients')


def getPatient(request):
    res = patient_dao.get_patient_appointment_all()
    return render(request, 'index.html', {'res': res})


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
    all_patient_base_info = patient_dao.get_base_info_all()
    for patient_base_info in all_patient_base_info:
        patient_id = patient_base_info.__getattribute__('id')
        sex = patient_base_info.__getattribute__('sex')
        patient_detail_info = patient_dao.get_patient_detail_byForeignPatientId(patient_id)
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

            diagnosis = patient_detail_info[0].__getattribute__('diagnosis')
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

    # man_age_list = [12, 15, 32, 44, 56, 21, 16, 18]
    # woman_age_list = [23, 14, 17, 29, 56, 44, 32, 45, 36, 65]
    # man_education_list = [12, 15, 32, 44, 56, 21, 16, 18, 22, 5, 2, 4, 8]
    # woman_education_list = [23, 14, 17, 29, 56, 44, 32, 45, 36, 33, 2, 1, 17, 44, 2]
    # patients_n = 123
    # hc_n = 65
    # mdd_n = 65
    # bd_n = 35
    # sz_n = 23
    subject_n = patients_n+hc_n
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
            if age < age_index and age >= i * 10:
                man_age_num += 1
        for age in woman_age_list:
            if age < age_index and age >= i * 10:
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
            if education < education_index and education >= i * 10:
                man_education_num += 1
        for education in woman_education_list:
            if education < education_index and education >= i * 10:
                woman_education_num += 1
        man_education_num_list.append(man_education_num)
        woman_education_num_list.append(woman_education_num)
        education_labels_list.append('%d-%d' % (i * 10, education_index))

    patients = patient_dao.get_patient_detail_all()
    for patient in patients:
        doctor = patient_dao.get_user_byPK(patient.doctor_id)
        search_scales = patient_dao.get_patient_scales_byPatientDetailId(patient.id)
        base_info = patient_dao.get_base_info_byPK(patient.patient_id)

        # patient.name = base_info['name']
        # patient.sex = base_info['sex']
        # patient.doctor_id = doctor['username']
        patient.name = base_info.name
        patient.sex = base_info.sex
        patient.doctor_id = doctor.name

        # if patient.diagnosis == 1:
        #     patient.diagnosis = 'MDD'
        # elif patient.diagnosis == 2:
        #     patient.diagnosis = 'BD'
        # elif patient.diagnosis == 3:
        #     patient.diagnosis = 'SZ'
        patient.diagnosis = disease_type_dict[patient.diagnosis]

        scale_id_list = []
        scale_score_list = []
        if len(search_scales) > 0:
            for scale in search_scales:
                if scale.state == 0:
                    continue
                scale_id_list.append(scale.id)

                scale_class = scale_class_dict[scale.id][0]
                if len(scale_class.objects.filter(patient_session_id=patient.id).values()) > 0:
                    scale_info = scale_class.objects.filter(patient_session_id=patient.id).values()[0]
                    scale_score_list.append(scale_info['total_score'])

        patient.scale_id_list = scale_id_list

    scales = patient_dao.get_scales_all()
    all_scale_id_list = []
    all_scale_name_list = []
    all_scale_normal_value_list = []
    for scale in scales:
        all_scale_id_list.append(scale.id)
        all_scale_name_list.append(scale.scale_name)
        if scale.id in scale_class_dict.keys():
            all_scale_normal_value_list.append(scale_class_dict[scale.id][1])

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
        'subject_n':subject_n,
        'woman_n':woman_n,
        'man_n':man_n,
        'patients':patients,
        'scales':scales,
        'all_scale_id_list':json.dumps(all_scale_id_list),
        'all_scale_name_list':json.dumps(all_scale_name_list),
        'scale_score_list':json.dumps(scale_score_list),
        'all_scale_normal_value_list':json.dumps(all_scale_normal_value_list)
    })


def getIndex(request):
    return render(request, 'index.html')


def patient_Detail(request):
    return render(request, 'patientDetail.html')


def patient_edit(request):
    return render(request, 'patient_edit.html')


def appointToday(request):
    return render(request, 'appointToday.html')
