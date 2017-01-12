FROM debian:8

RUN echo "Europe/Berlin" > /etc/timezone && dpkg-reconfigure -f noninteractive tzdata

RUN apt-get update
RUN apt-get install -y php5 php5-mysql php5-curl curl git
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

