FROM python:3.9-slim-buster

RUN apt-get update && apt-get install -y nginx

COPY default.conf /etc/nginx/conf.d/

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt

CMD ["sh", "-c", "python manage.py runserver 0.0.0.0:8000 & nginx -g 'daemon off;'"]

EXPOSE 80
EXPOSE 8000
