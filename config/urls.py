from django.conf import settings
from django.contrib import admin
from django.urls import path
from drf_spectacular.views import SpectacularAPIView, SpectacularSwaggerView, SpectacularRedocView
# from core_apps.user_auth.views import TestLoggingView

urlpatterns = [
    path(settings.ADMIN_URL, admin.site.urls),
    # path("", TestLoggingView.as_view(), name="home"),

    path('api/v1/schema/', SpectacularAPIView.as_view(), name='schema'),
    path('api/v1/schema/swagger-ui/', SpectacularSwaggerView.as_view(url_name='schema'), name='swagger-ui'),
    path('api/schema/redoc/', SpectacularRedocView.as_view(url_name='schema'), name='redoc'),
]
# python -c "import secrets; print(secrets.token_urlsafe(38))"


admin.site.site_header = "NextGen Bank Admin"
admin.site.site_title = "NextGen Bank Admin Portal"
admin.site.index_title = "Welcome to NextGen Bank Admin Portal"