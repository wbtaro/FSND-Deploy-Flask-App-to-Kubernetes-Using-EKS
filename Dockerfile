FROM python:stretch
RUN mkdir FSND-Deploy-Flask-App-to-Kubernetes-Using-EKS
WORKDIR FSND-Deploy-Flask-App-to-Kubernetes-Using-EKS
COPY . .
RUN pip install -r requirements.txt
ENTRYPOINT gunicorn -b :8080 main:APP
