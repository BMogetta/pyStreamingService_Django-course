# Generated by Django 4.1 on 2022-09-21 00:02

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0001_initial'),
    ]

    operations = [
        migrations.RenameField(
            model_name='customuser',
            old_name='profile',
            new_name='profiles',
        ),
    ]
