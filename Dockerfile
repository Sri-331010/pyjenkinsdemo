FROM ubuntu

RUN sudo apt update && sudo apt upgrade -y
RUN sudo apt install python3 python3-pip
RUN pip3 install flask

COPY simple-web-app.py /opt/
ENTRYPOINT FLASK_APP=/opt/simple-web-app.py flask run --host=0.0.0.0 --port=8080
