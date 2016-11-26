FROM ubuntu:14.04
MAINTAINER Diana Ciro "kathe9463@gmail.com"


RUN apt-get update && apt-get -y upgrade
ADD recetario /home/recetario

RUN sudo apt-get install -y curl

RUN curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -


RUN sudo apt-get install -y nodejs
RUN sudo npm -g install sails
RUN apt-get install -y nano

EXPOSE 4003
WORKDIR /home/emberRecetario
CMD ["sails","lift"]
