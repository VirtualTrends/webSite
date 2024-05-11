#!/bin/sh

echo 'Running collecstatic'
python3 manage.py collectstatic --no-input --settings=config.settings.production

echo 'Applying migrations...'
python3 manage.py wait_for_db --settings=config.settings.production
python3 manage.py migrate --settings=config.settings.production

echo 'Running server...'

#gunicorn --env DJANGO_SETTINGS_MODULE=config.settings.production config.wsgi:application --bind 127.0.0.1:8000

#gunicorn --env DJANGO_SETTINGS_MODULE=config.settings.production config.wsgi:application --bind 0.0.0.0:8000

#gunicorn --env DJANGO_SETTINGS_MODULE=config.settings.production config.wsgi:application --bind 0.0.0.0:$PORT

gunicorn \
    --bind 0.0.0.0:8000 \
    --workers 3 \       # Ajusta el número de trabajadores según tu necesidad
    --timeout 120 \     # Ajusta el tiempo de espera según tu necesidad
    --env DJANGO_SETTINGS_MODULE=config.settings.production \
    config.wsgi:application