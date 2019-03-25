FROM php:7.3-cli

#Install openSSH
RUN apt-get update
RUN apt-get install -y openssh-client

#Install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

#Install Surf
ADD surf.phar /usr/local/bin/surf
RUN chmod +x /usr/local/bin/surf

