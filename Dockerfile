FROM jenkins/jenkins:latest-jdk11

USER root

RUN apt-get update && apt-get install -y lsb-release && apt-get install -y rsync && apt-get install -y net-tools && apt-get install -y vim

RUN curl -fsSLo /usr/share/keyrings/docker-archive-keyring.asc \
  https://download.docker.com/linux/debian/gpg

RUN echo "deb [arch=$(dpkg --print-architecture) \
  signed-by=/usr/share/keyrings/docker-archive-keyring.asc] \
  https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" > /etc/apt/sources.list.d/docker.list

RUN apt-get update && apt-get install -y docker-ce-cli docker-compose

USER jenkins

WORKDIR /var/jenkins_home
