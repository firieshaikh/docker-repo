FROM centos
MAINTAINER Shaikh Feroz

WORKDIR /app
USER root
ADD appcode-repo/requirements.txt /app/requirements.txt

RUN rpm -ivh http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-8.noarch.rpm
RUN /usr/bin/yum -y install python-pip
RUN /usr/bin/pip install -r requirements.txt
ADD appcode-repo/app.py /app/app.py
EXPOSE 80

CMD ["python", "app.py"]
