FROM ubuntu:latest

RUN echo "deb http://security.ubuntu.com/ubuntu jammy-security main universe" > /etc/apt/sources.list.d/sources.list
RUN apt-get install python3 python3-pip
RUN pip3 install flask

COPY simple-web-app.py /opt/
ENTRYPOINT FLASK_APP=/opt/simple-web-app.py flask run --host=0.0.0.0 --port=8080
