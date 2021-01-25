from . import views
from django.conf.urls import url

urlpatterns = [
    url(r'^get', views.get),
    url(r'^upload_out_record', views.upload_out_record),
    url(r'^upload_medical_advice', views.upload_medical_advice),

]