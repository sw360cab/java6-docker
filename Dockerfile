FROM ubuntu:14.04

MAINTAINER Giuseppe Vavala\'
MAINTAINER Sergio Matone

# ADD JAVA repo
RUN apt-get update && install -y \
  python-software-properties \
  software-properties-common
RUN add-apt-repository ppa:webupd8team/java && apt-get update

# Install Java
RUN echo debconf shared/accepted-oracle-license-v1-1 select true | sudo debconf-set-selections
RUN echo debconf shared/accepted-oracle-license-v1-1 seen true | sudo debconf-set-selections
RUN apt-get -y install oracle-java6-installer
