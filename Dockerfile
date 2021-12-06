FROM python:3.9


RUN pip install click==7.1.2 \
    && pip install Flask==1.1.2 \
    && pip install itsdangerous==1.1.0 \
    && pip install Jinja2==2.11.2 \
    && pip install MarkupSafe==1.1.1 \
    && pip install Werkzeug==1.0.1

ADD ./in /app

EXPOSE 8080

RUN apt update

ENTRYPOINT python /app/app.py runserver 0.0.0.0:8080