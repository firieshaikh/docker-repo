FROM centos
MAINTAINER Shaikh Feroz

WORKDIR /app
USER root
COPY requirements.txt /app/requirements.txt

RUN yum install epel-release
RUN /usr/bin/yum -y install python-pip
RUN /usr/bin/pip install -r requirements.txt
COPY app.py /app/app.py
EXPOSE 80

CMD ["python", "app.py"]
