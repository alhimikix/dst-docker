FROM ubuntu:20.04

USER root


RUN apt update -y
RUN apt upgrade -y
RUN apt install wget lib32gcc1 nano curl -y
RUN apt install libcurl3-gnutls -y
RUN mkdir /root/steamcmd

WORKDIR /root/steamcmd


RUN wget http://media.steampowered.com/installer/steamcmd_linux.tar.gz
RUN tar xvzf steamcmd_linux.tar.gz
RUN rm steamcmd_linux.tar.gz

WORKDIR /root

COPY ./runserver.sh ./









