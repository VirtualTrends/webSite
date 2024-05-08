import os
from dotenv import load_dotenv
from .base import *


SECRET_KEY = os.environ.get('SECRET_KEY')

dotenv_path = 'webSite/BACK-END/virtual-trends/.env' 
load_dotenv(Path.joinpath(BASE_DIR, dotenv_path))

# SECURITY WARNING: don't run with debug turned on in production!
# Lo cambio a false en produccion
DEBUG = False

#Depende del ambiente. En produccion no se puede dejar vacío, es dónde se va a encontrar la aplicacion virtual trends django
ALLOWED_HOSTS = ['*']

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql',
        'NAME': os.environ.get('DB_NAME'),
        'USER': os.environ.get('DB_USER'),
        'PASSWORD': os.environ.get('DB_PASSWORD'),
        'HOST': os.environ.get('DB_HOST'), 
        'PORT': os.environ.get('DB_PORT'),
    }
}

STATIC_ROOT = Path.joinpath(BASE_DIR, 'staticfiles')

STATICFILES_STORAGE = "whitenoise.storage.CompressedManifestStaticFilesStorage"