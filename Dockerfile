FROM python:stretch
RUN git clone \
    https://github.com/udacity/cd0157-Server-Deployment-and-Containerization.git
WORKDIR cd0157-Server-Deployment-and-Containerization
RUN pip install -r requirements.txt
COPY .env_file .
ENTRYPOINT gunicorn -b :8080 main:APP
