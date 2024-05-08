from .base import *

SECRET_KEY = 'admin1234'


DEBUG = True

#Depende del ambiente. En produccion no se puede dejar vacío, es dónde se va a encontrar la aplicacion virtual trends django
ALLOWED_HOSTS = []

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.sqlite3',
        'NAME': BASE_DIR / 'db.sqlite3',
    }
}