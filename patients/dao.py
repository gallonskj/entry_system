
import users.models as users_models
import patients.models as patients_models
import scales.models as scales_models
import tools.Utils as tools_utils


################ add 部分 ################
################ add 部分 ################
################ add 部分 ################

# add baseinfo表
def add_base_info(patient_base_info_objct):
    patient_base_info_objct.save()


# add patient_detail表
def add_patient_detail(patient_detail_objct):
     patient_detail_objct.save()

# add BPatientAppointment表
def add_patient_appointment(PatientAppoientment_object):
    PatientAppoientment_object.save()

################ del 部分 ################
################ del 部分 ################
################ del 部分 ################

# patient_detail表
def del_patient_detail_byPK(patient_detail_id):
    patients_models.DPatientDetail.object.filter(id=patient_detail_id)[0].delete()

# patient_base_info表
def del_patient_base_info_byPK(patient_id):
    if patients_models.BPatientBaseInfo.objects.filter(pk=patient_id).count() == 1:
        patients_models.BPatientBaseInfo.objects.filter(pk=patient_id).first().delete()

# patient_detail表
def del_patient_detail_byPK(patient_session_id):
    if patients_models.DPatientDetail.objects.filter(pk=patient_session_id).count() == 1:
        patients_models.DPatientDetail.objects.filter(pk=patient_session_id).first().delete()


################ get 部分 ################
################ get 部分 ################
################ get 部分 ################
################ get 部分 ################

# get scales表
def get_scales_all():
    scales_list = scales_models.DScales.objects.all()
    return scales_list

# get user表
def get_user_byPK(doctor_id):
    doctor = users_models.SUser.objects.filter(id=doctor_id)[0]
    return doctor


# get 民族表
def get_DEthnicity_all():
    dEthnicity_list = patients_models.DEthnicity.objects.all()
    return dEthnicity_list

# get base info表
def get_base_info_all():
    base_info_list = patients_models.BPatientBaseInfo.objects.all()
    return base_info_list

def get_base_info_byPK(patient_id):
    patient = patients_models.BPatientBaseInfo.objects.filter(pk=patient_id)[0]
    return patient


# get patient_detail 主体
def get_patient_detail_byPK(patient_detail_id):
    patient_detail = patients_models.DPatientDetail.object.filter(id=patient_detail_id)[0]
    return patient_detail


def get_patient_detail_byPatientIdAndSessionId(patient_id,session_id):
    dPatientDetail = patients_models.DPatientDetail.objects.filter(patient_id=patient_id, session_id=session_id)[0]
    return dPatientDetail


def get_patient_detail_byForeignPatientId(patient_id):
    patient_detail_list = patients_models.DPatientDetail.objects.filter(patient__id=patient_id)
    return patient_detail_list

def get_patient_detail_all():
    patient_detail_list = patients_models.DPatientDetail.objects.all()
    return patient_detail_list


# r_patient_scales表相关：
# get r patient_detail 的自评量表状态
def get_patient_scales_byPatientDetailId_self(patient_detail_id):
    patient_scales_list = scales_models.RPatientScales.objects.filter(patient_session=patient_detail_id, scale__patient_or_doctor_type = 0)
    return patient_scales_list

# get r patient_detail 的他评量表状态
def get_patient_scales_byPatientDetailId_other(patient_detail_id):
    patient_scales_list = scales_models.RPatientScales.objects.filter(patient_session=patient_detail_id, scale__patient_or_doctor_type = 1)
    return patient_scales_list


# get r patient_detail 的认知表状态
def get_patient_scales_byPatientDetailId_cognition(patient_detail_id):
    patient_scales_list = scales_models.RPatientScales.objects.filter(patient_session=patient_detail_id, cale__patient_or_doctor_type = 2)
    return patient_scales_list


# get r patient_detail表
def get_patient_scales_byPatientDetailId(patient_detail_id):
    patient_scales_list = scales_models.RPatientScales.objects.filter(patient_session=patient_detail_id)
    return patient_scales_list


# d_patient_appointment表
def get_patient_appointment_all():
    patients_models.DPatientAppointment.objects.all()


# get patient_basic_info_XXX 系列表，以及r_patient_量表系列的接口在scale_dao中
