FROM alexshin/docker-django-asgi-daphne


ENV DAPHNE_PORT=8000
ENV APP_ASGI_ENTRYPOINT=tellme.asgi:channel_layer
ENV DJANGO_SETTINGS_MODULE=tellme.settings

WORKDIR /app
COPY . .
WORKDIR /app/tellme-server
RUN pip install -r requirements.txt --user
RUN PATH=$PATH:/home/daphne/.local/bin

# This is only needed if daphne is going to be running behind a proxy like nginx.
#ENTRYPOINT ["daphne", "-b", "0.0.0.0", "-p", "8000", "tellme.asgi:application"]
ENTRYPOINT ["python", "manage.py", "runserver", "0.0.0.0:8000"]

