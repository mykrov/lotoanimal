"""loteria URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.11/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.conf.urls import url, include
    2. Add a URL to urlpatterns:  url(r'^blog/', include('blog.urls'))
"""
from django.conf.urls import include, url
from django.contrib.auth.views import login, logout_then_login, logout
from django.contrib.auth.decorators import login_required

from django.contrib import admin
from django.conf import settings
from django.conf.urls.static import static
from pagina.views import login, home, lotoanimal, ticket, search, taquilla, ticketpre,pdftk, HelloPDFView
from django.contrib.auth.views import logout, logout_then_login

urlpatterns = [
   
    url(r'^admin/',admin.site.urls),
    url(r'^$',login_required(home), name='index'),
    url(r'^accounts/login/$',login,name='login'),
    url(r'^home/',login_required(home), name='index'),
    url(r'^caranimal/(?P<loteriaid>\d+)/',login_required(lotoanimal), name='caranimal'),
    url(r'^ticket/',login_required(ticket),name='ticket'),
    url(r'^ticketready/', ticket, name='ticketready'),
    url(r'^logout/',logout_then_login,name='logout'),
    url(r'^search/',login_required(search), name='search'),
    url(r'^taquilla/',login_required(taquilla), name='taquilla'),
    url(r'^ticketpre/',login_required(ticketpre), name='ticketpre'),
    url(r'^pdftk/',login_required(pdftk), name='pdftk'),
    url(r'^doc/(\w+)/$', HelloPDFView.as_view()),
    ]
if settings.DEBUG:
    urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
