import os
from dotenv import load_dotenv

from config.logging import *
from config.settings.base import *



dotenv_path = os.path.join(BASE_DIR, '.env')
load_dotenv(dotenv_path)
SECRET_KEY = os.environ.get('SECRET_KEY')

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