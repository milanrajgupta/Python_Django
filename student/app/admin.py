from django.contrib import admin

# Register your models here.
from app.models import Event


# @admin.register(Task)
# class TaskAdmin(admin.ModelAdmin):
#     list_display = ['user', 'task_name', 'task_priority', 'completed_at']

@admin.register(Event)
class EventAdmin(admin.ModelAdmin):
    list_display = ['id', 'user', 'event_name', 'event_date']