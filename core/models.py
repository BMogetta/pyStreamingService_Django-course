import uuid
from django.db import models
from django.contrib.auth.models import AbstractUser


AGE_CHOICES=(
  ('All', 'All'),
  ('Kids', 'Kids')
)

# Create your models here.

class CustomUser(AbstractUser):
  profile = models.ManyToManyField('Profile', null=True, blank=True)


class Profile(models.Model):
  name = models.CharField(max_length=100)
  age_limit = models.CharField(max_length=10, choices=AGE_CHOICES)
  uuid = models.UUIDField(default=uuid.uuid4)


class Movie(models.Model):
  title = models.Ch