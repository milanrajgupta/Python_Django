# Generated by Django 4.0 on 2022-01-25 04:44

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('app', '0004_alter_task_completed_at'),
    ]

    operations = [
        migrations.DeleteModel(
            name='Task',
        ),
    ]