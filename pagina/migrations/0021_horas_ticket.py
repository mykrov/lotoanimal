# -*- coding: utf-8 -*-
# Generated by Django 1.11.5 on 2017-10-18 13:25
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('pagina', '0020_auto_20171018_0909'),
    ]

    operations = [
        migrations.AddField(
            model_name='horas',
            name='ticket',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='pagina.Ticket'),
        ),
    ]
