FROM ubuntu:latest

RUN apt-get update
RUN apt-get install python3 python3-pip -y
RUN pip3 install flask
RUN apt-get install python3 python3-pip
RUN pip3 install flask

COPY simple-web-app.py /opt/
ENTRYPOINT FLASK_APP=/opt/simple-web-app.py flask run --host=0.0.0.0 --port=8080
