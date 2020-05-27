docker-compose run web django-admin startproject ${PWD##*/} .
sudo chown -R $USER:$USER .

{
    echo ''
    echo 'DATABASES = {'
    echo '    "default": {'
    echo '        "ENGINE": "django.db.backends.postgresql",'
    echo '        "NAME": "postgres",'
    echo '        "USER": "postgres",'
    echo '        "PASSWORD": "postgres",'  
    echo '        "HOST": "db",'
    echo '        "PORT": 5432,'
    echo '    }'
    echo '}'
} >> ${PWD##*/}/settings.py