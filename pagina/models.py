from django.db import models
from django.contrib.auth.models import User

class Agencia (models.Model):
	ida=models.AutoField(primary_key=True)
	nombrea=models.CharField(max_length=52)
	direccion=models.CharField(max_length=60)
	apuesta_min=models.IntegerField(null=False)
	tel = models.IntegerField()	
	usuario = models.ForeignKey(User,null=True)

	def __str__(self):
		return '%s %s' %(self.nombrea, self.ida)
  

class Loteria(models.Model):
	idl = models.AutoField(primary_key=True)
	nombre_lot = models.CharField(max_length=52)
	agencia = models.ForeignKey(Agencia, default=1)
	bankporcentaje = models.IntegerField(default=10)

	def __str__(self):
		return '%s %s' %(self.nombre_lot,self.idl)


class Animales(models.Model):
	id_animal=models.AutoField(primary_key=True)
	idl= models.ForeignKey(Loteria, null=False)
	imagen=models.CharField(max_length=60)
	numero=models.CharField(max_length=2, null=False)
	nombre = models.CharField(max_length=20, null=True)

	def __str__(self):
		return '%s %s'%(self.nombre, self.numero,)


class Ticket(models.Model):
	id_ticket=models.AutoField(primary_key=True)
	ida=models.ForeignKey(Agencia)
	idl=models.ForeignKey(Loteria)
	total=models.IntegerField(null=True)
	cedula=models.IntegerField(null=True)
	token=models.CharField(max_length=50, null=True)
	nota = models.CharField(max_length=20)
	fecha = models.DateField(auto_now_add=True, null=True)

	def __str__ (self):
		return '%s %s %s' %(self.id_ticket, self.token, self.total)


class Ticke_item(models.Model):
	id_ticket = models.ForeignKey(Ticket)
	id_animal = models.ForeignKey(Animales)
	monto_apu = models.IntegerField(null=False)

	def __str__(self):
		return '%s %s %s' %(self.id_animal, self.monto_apu, self.id_ticket)


class Sorteo (models.Model):
	hora = models.TimeField(auto_now=False)
	
	def __str__(self):
		return '%s' %(self.hora)

class Horas(models.Model):
	horas = models.ForeignKey(Sorteo, null=True)
	ticket = models.ForeignKey(Ticket, null=True)
	
	def __str__(self):
		return '%s' %(self.horas)


class AnimalGanador(models.Model):
	
	animal = models.ForeignKey(Animales)
	hora = models.ForeignKey(Sorteo)
	fecha = models.DateField(auto_now=False)
	
	def __str__(self):
		return '%s' %(self.hora)
