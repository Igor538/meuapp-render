from django.contrib import admin
from django.urls import path
from django.http import JsonResponse

def api_teste(request):
    1 / 0  # erro proposital

urlpatterns = [
    path('', api_teste),
    path('admin/', admin.site.urls),
]
