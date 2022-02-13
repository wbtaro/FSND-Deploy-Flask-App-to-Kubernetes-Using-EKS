FROM python:stretch
RUN git clone \
    https://github.com/wbtaro/Flask-JWT-App.git
WORKDIR Flask-JWT-App
RUN pip install -r requirements.txt
COPY .env_file .
ENTRYPOINT gunicorn -b :8080 main:APP
