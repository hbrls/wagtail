from __future__ import absolute_import, unicode_literals

from .base import *

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = True


DJANGO_ENV = 'dev'


try:
    from .local import *
except ImportError:
    pass
