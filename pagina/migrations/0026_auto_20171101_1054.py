# -*- coding: utf-8 -*-
# Generated by Django 1.11.5 on 2017-11-01 14:54
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('pagina', '0025_animalganador'),
    ]

    operations = [
        migrations.AlterField(
            model_name='horas',
            name='horas',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='pagina.Sorteo'),
        ),
    ]
