from . import views
from django.conf.urls import url

urlpatterns = [
    url(r'^upload_out_record', views.upload_out_record),
    url(r'^upload_medical_advice', views.upload_medical_advice),
    url(r'^add_inpatient_info', views.add_inpatient_info),
    url(r'^get_all_inpatient_info', views.get_all_inpatient_info),
    url(r'^get_inpatient_detail', views.get_inpatient_detail),
    url(r'^out_inpatient', views.out_inpatient),
    url(r'^del_inpatient', views.del_inpatient),
    url(r'^upload_progress_note', views.upload_progress_note),
    url(r'^read_medical_advice', views.read_medical_advice),
    url(r'^insert_medical_dict', views.insert_medical_dict),
    url(r'^get', views.get),
]