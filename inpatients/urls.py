from . import views
from django.conf.urls import url

urlpatterns = [
    url(r'^get', views.get),
    url(r'^test', views.test),
]