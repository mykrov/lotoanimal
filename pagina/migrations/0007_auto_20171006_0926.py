# -*- coding: utf-8 -*-
# Generated by Django 1.11.5 on 2017-10-06 13:26
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('pagina', '0006_agenciauser'),
    ]

    operations = [
        migrations.RenameField(
            model_name='agenciauser',
            old_name='agencia',
            new_name='agenciau',
        ),
        migrations.RemoveField(
            model_name='usuario',
            name='id_agencia',
        ),
    ]