from __future__ import absolute_import, unicode_literals
import os

from .base import *


DEBUG = False


DJANGO_ENV = 'prod'


SECRET_KEY = os.environ.get('DJANGO_SECRET_KEY')


DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': os.environ.get('DATABASE_NAME'),
        'USER': os.environ.get('DATABASE_USER'),
        'PASSWORD': os.environ.get('DATABASE_PASS'),
        'HOST': os.environ.get('DATABASE_HOST'),
        'PORT': '3306',
    }
}


ALLOWED_HOSTS = ['wagtail.example.com']
