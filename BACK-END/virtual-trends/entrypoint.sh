echo 'Running collecstatic'
python3 manage.py collectstatic --no-input --settings=config.settings.production
echo 'Applying migrations...'
python3 manage.py migrate --settings=config.settings.production
echo 'Running server...'
gunicorn --env DJANGO_SETTINGS_MODULE=config.settings.production config.wsgi:application -- 127.0.0:8000
