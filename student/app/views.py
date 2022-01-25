from django.contrib.auth.models import User

from .models import Event
from .serializers import RegisterSerializer, EventSerializer
from rest_framework import generics


class RegisterView(generics.CreateAPIView):
    queryset = User.objects.all()
    serializer_class = RegisterSerializer

class AddEventView(generics.CreateAPIView):
    queryset = Event.objects.all()
    serializer_class = EventSerializer


class EventView(generics.ListAPIView):
    queryset = Event.objects.all()
    serializer_class = EventSerializer

# class TaskView(generics.ListAPIView):
#     queryset = Task.objects.all()
#     serializer_class = TaskSerializer