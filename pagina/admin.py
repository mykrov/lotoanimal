from django.contrib import admin
from django.contrib.auth.admin import UserAdmin as UsuarioBasicoAdmin
from django.contrib.auth.models import User


# Register your models here.

from pagina.models import Loteria, Animales, Ticket, Ticke_item, Agencia, Sorteo

admin.site.register(Loteria)
admin.site.register(Animales)
admin.site.register(Ticket)
admin.site.register(Ticke_item)
admin.site.register(Agencia)
admin.site.register(Sorteo)