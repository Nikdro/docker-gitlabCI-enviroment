FROM debian:9

RUN echo "Europe/Berlin" > /etc/timezone && dpkg-reconfigure -f noninteractive tzdata
RUN apt-get update
RUN apt-get install -y curl git apt-transport-https zip


#Install NodeJS
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get install -y nodejs
