# -*- coding: utf-8 -*-
# Generated by Django 1.11.5 on 2017-10-06 13:58
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('pagina', '0007_auto_20171006_0926'),
    ]

    operations = [
        migrations.DeleteModel(
            name='Usuario',
        ),
        migrations.RenameField(
            model_name='agenciauser',
            old_name='agenciau',
            new_name='nombreagenciau',
        ),
    ]