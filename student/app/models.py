from django.contrib.auth.models import User
from django.db import models

# TK_LOW = 1
# TK_MEDIUM = 2
# TK_HIGH = 3
#
# TASK_PRIORITY = (
#     (TK_LOW, 'Low'),
#     (TK_MEDIUM, 'Medium'),
#     (TK_HIGH, 'High'),
# )

class Event(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    event_name = models.CharField(max_length=120)
    event_date = models.DateField()
    # task_priority = models.PositiveSmallIntegerField(choices=TASK_PRIORITY)

    def __str__(self):
        return "%s" % self.event_name


# class Event(models.Model):
#     user = models.ForeignKey(User, on_delete=models.CASCADE)
#     event_name = models.CharField(max_length=120)
#     event_date = models.DateField()
#
#     def __str__(self):
#         return "%s" % self.event_name