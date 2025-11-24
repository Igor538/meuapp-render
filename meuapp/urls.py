from django.contrib import admin
from django.urls import path
from django.http import JsonResponse

def api_teste(request):
    return JsonResponse({"status": "ok", "mensagem": "Deploy funcionando no PythonAnywhere!"})

urlpatterns = [
    path('', api_teste),
    path('admin/', admin.site.urls),
]
