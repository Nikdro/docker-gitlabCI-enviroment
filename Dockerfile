FROM debian:8

RUN echo "Europe/Berlin" > /etc/timezone && dpkg-reconfigure -f noninteractive tzdata
RUN apt-get update
RUN apt-get install -y curl git apt-transport-https zip lsb-release ca-certificates 


#Add sury to apt
RUN curl https://packages.sury.org/php/apt.gpg | apt-key add -
RUN echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/php.list
RUN apt-get update

#Install PHP & composer
RUN apt-get install -y php7.1 php7.1-mysql php7.1-curl php7.1-mbstring php7.1-bcmath php7.1-dom php7.1-zip
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer


#Install Surf
ADD surf.phar /usr/local/bin/surf
RUN chmod +x /usr/local/bin/surf


#Install NodeJS
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get install -y nodejs
