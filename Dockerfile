FROM debian:8

RUN apt-get update
RUN apt-get install -y php5 php5-mysql curl git
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

