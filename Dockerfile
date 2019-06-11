FROM php:7.3-cli

#Install dependencies
RUN apt-get update
RUN apt-get install -y openssh-client zip zlib1g-dev libzip-dev git

#Install docker extensions
RUN docker-php-ext-install zip

#Install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

#Install Surf
ADD surf.phar /usr/local/bin/surf
RUN chmod +x /usr/local/bin/surf


