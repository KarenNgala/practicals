from django.contrib.auth.models import AbstractBaseUser, PermissionsMixin
from django.db import models
from django.utils import timezone
from django.utils.translation import gettext_lazy as _
from django.db.models.signals import post_save
from django.dispatch import receiver

from .managers import CustomUserManager


class CustomUser(AbstractBaseUser, PermissionsMixin):
    username = models.CharField(max_length=20, unique=True)
    firstname = models.CharField(max_length=20, blank=True)
    lastname = models.CharField(max_length=20, blank=True)
    is_staff = models.BooleanField(default=False)
    is_active = models.BooleanField(default=True)
    date_joined = models.DateTimeField(default=timezone.now)
    img = models.ImageField(upload_to='avatars/', null=True, blank=True)

    USERNAME_FIELD = 'username'
    REQUIRED_FIELDS = []

    objects = CustomUserManager()

    def __str__(self):
        return self.username


    
class Profile(models.Model):
    ''' extended User model '''
    user = models.OneToOneField(CustomUser, on_delete=models.CASCADE, related_name='profile')
    profilename = models.CharField(max_length=20, default='')

    def __str__(self):
        return f'{self.user}'

    def save_profile(self):
        ''' method to save a user's profile '''
        self.save()

    def delete_profile(self):
        '''method to delete a user's profile '''
        self.delete()

        
@receiver(post_save, sender=CustomUser)
def create_user_profile(sender, instance, created, **kwargs):
    if created:
        Profile.objects.create(user=instance)

@receiver(post_save, sender=CustomUser)
def save_user_profile(sender, instance, **kwargs):
    instance.profile.save()



class Blog(models.Model):
    userid =  models.ForeignKey(CustomUser, on_delete=models.CASCADE)
    blog = models.TextField()
    date = models.DateTimeField(auto_now_add=True)