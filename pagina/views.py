from django.shortcuts import render, redirect, HttpResponseRedirect
from pagina.forms import LoginForm
from django.contrib.auth import authenticate,views
from django.contrib.auth.forms import AuthenticationForm
from django.contrib.auth import login as auth_login
from django.http import HttpRequest
from django.contrib.auth.models import User
from pagina.models import Animales, Loteria, Agencia, Sorteo, Ticket, Ticke_item, Horas, AnimalGanador
from django.contrib.auth.models import User
from django_ajax.decorators import ajax
from django.contrib.auth.decorators import login_required
from django.http import JsonResponse
import secrets
import json
from django.core import serializers
from datetime import datetime, timedelta, date
from django.db.models import Sum
# Create your views here.

def login(request):
    if request.user.is_authenticated():
        return HttpResponseRedirect ('/home/')
    if request.method == 'POST':
        form = AuthenticationForm(data=request.POST)
        if form.is_valid():
            username = request.POST.get('username')
            password = request.POST.get('password')
            acceso = authenticate (username=username, password=password)
            if acceso is not None:
                if acceso.is_active:
                    auth_login(request,acceso)
                    return HttpResponseRedirect('/home/')
            else:
                form = AuthenticationForm()
                script = "alert('Usuario no activo');"
                print ('no valido')
                return render(request, 'login.html', locals())

    else:
        form = AuthenticationForm()
        print ('asdasdas')
    return render(request, 'login.html', locals())


@login_required(login_url="/login/")
def home (request):
    us = request.user.id
    agencia_aso = Agencia.objects.filter(usuario=us)
    print(us)
    print(agencia_aso)
    loterias = Loteria.objects.filter(agencia=agencia_aso).values('idl','nombre_lot')

    return render (request, 'index.html', {'loterias': loterias})


def lotoanimal (request, loteriaid):
    lotid = loteriaid 
    animalescaracas = Animales.objects.filter(idl=lotid).values('numero','nombre')
    us = request.user
    apuestaminima = Loteria.objects.filter(idl=lotid).values('agencia__apuesta_min')
    valor = apuestaminima[0]['agencia__apuesta_min']
    horas = Sorteo.objects.all()
    loteria = Loteria.objects.filter(idl=lotid).values('agencia__nombrea')
    nombreloteria = loteria[0]['agencia__nombrea']
    
    contexto = {'lista' : animalescaracas, 'mini' : valor, 'horas': horas, 'loteria':nombreloteria, 'id_loteria':lotid,}
    return render (request, 'lotoanimal.html', contexto)


@ajax
def ticket(request): 
    horas = request.POST.getlist('horas[]')
    todos = json.loads(request.POST.get('animales'))
    total = sum(todos.values())
    loteria = request.POST.get('loteria')
    idlote = request.POST.get('id_loteria')
    ci = request.POST.get('ci')
    us = request.user.id
    loteria = Loteria.objects.get(pk=idlote)
    agenciar = Agencia.objects.get(usuario_id=us)
    tokena = secrets.token_hex(16)
    #Crear ticket general
    ticket = Ticket (cedula=ci, ida=agenciar, idl=loteria, total=total,token=tokena)
    ticket.save()
    idticket = ticket.id_ticket
    #Crear los  tickets items y los agrego al ticket general
    for k,v in todos.items():
        ticketItem = Ticke_item(id_ticket=ticket, id_animal=Animales.objects.get(nombre=k, idl=loteria), monto_apu=v)
        ticketItem.save()
    #enlazar las horas con el ticket
    for h in horas:
        horat = Horas(ticket=ticket, horas=h )
        horat.save()

    return {'horas': horas, 'total': total, 'animales': todos,'loteria': loteria, 'ci': ci, 'agencia': agenciar, 'token': tokena, 'idtk':idticket,}

@ajax
def search (request):
    ticketbuscado = request.POST.get('busquedatk')
    ticketb = Ticket.objects.filter(id_ticket=ticketbuscado).values('id_ticket','total','token')
    serializeFecha = serializers.serialize("json", Ticket.objects.filter(id_ticket=ticketbuscado), fields=('fecha'))
    fechatk = json.loads(serializeFecha)
    us = request.user.id
    agencia = Agencia.objects.get(usuario_id=us)
    idlote = request.POST.get('idloteria')
    loteria = Loteria.objects.get(pk=idlote)
    sorteos = Horas.objects.filter(ticket=ticketbuscado)
    if ticketb.count() > 0:
        ticketitems = Ticke_item.objects.filter (id_ticket=ticketbuscado).values('id_animal__nombre', 'monto_apu')
        print('si hay tickets')
        return {'ticketitem': ticketitems,'loteria': loteria, 'ticketb': ticketb,'sorteos': sorteos,'agencia': agencia, 'fecha': fechatk[0]['fields']['fecha'], 'tkbuscado': ticketbuscado}
    else:
        print('no hay ticket')


def taquilla (request):
    hoy = datetime.today()
    ticketsHoy = Ticket.objects.filter(fecha=hoy).values('id_ticket')
    ticketDiarios = Ticket.objects.filter(fecha=hoy).count()
    totalVentas = Ticket.objects.filter(fecha=hoy).aggregate(Sum('total'))
    tkitemsHoy = Ticke_item.objects.filter(id_ticket__fecha=hoy).values('id_animal','id_ticket')
    animalesGanadores = AnimalGanador.objects.filter(fecha=hoy).values('animal__id_animal', 'hora')
   
    print(tkitemsHoy)
    contexto = {'tikets_diarios':ticketDiarios, 'totalventas':totalVentas['total__sum'],}

    return render (request, 'taquilla.html', contexto)

   
    
    
    