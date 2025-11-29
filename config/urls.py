from django.conf import settings
from django.contrib import admin
from django.urls import path

urlpatterns = [
    path(settings.ADMIN_URL, admin.site.urls),
]
# python -c "import secrets; print(secrets.token_urlsafe(38))"