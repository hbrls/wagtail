from __future__ import absolute_import, unicode_literals

from .base import *

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = True


DJANGO_ENV = 'dev'


# comment out these lines before you run collectstatic
STATICFILES_DIRS = [
    os.path.join(PROJECT_DIR, 'static'),
    os.path.join(BASE_DIR, 'static'),
]
STATIC_ROOT = ''


try:
    from .local import *
except ImportError:
    pass
