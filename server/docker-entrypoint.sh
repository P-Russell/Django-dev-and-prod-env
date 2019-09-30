#!/bin/bash

python manage.py makemigrations &&
python manage.py migrate &&
python manage.py runserver
echo "from django.contrib.auth.models import User; User.objects.create_superuser('admin', 'admin@example.com', 'pass')" | python manage.py shell


#gunicorn project.wsgi -b 0.0.0.0:8000