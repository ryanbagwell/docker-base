FROM ubuntu:latest

MAINTAINER ryanbagwell

ENV DEPLOY_ENV development

RUN apt-get -y update
RUN apt-get install -y python-software-properties
RUN apt-get install -y git
RUN apt-get install -y mercurial meld
RUN apt-get install -y subversion

#
# Install node
#
RUN add-apt-repository ppa:chris-lea/node.js
RUN apt-get -y update
RUN apt-get install -y nodejs
RUN npm --version

#
# Set some ssh configs
#
RUN touch /root/.ssh/known_hosts
RUN chmod 644 /root/.ssh/known_hosts
RUN echo "Host *\r\n    StrictHostKeyChecking no" > /root/.ssh/config




