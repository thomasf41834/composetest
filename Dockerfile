FROM debian
RUN apt update -y
RUN apt upgrade -y
RUN apt-get install -y php-cli curl
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer
# utile pour composer
RUN apt-get install -y php-mbstring php-dom git
#pour faire fonctionner mysql
RUN apt-get install -y php-mysql mariadb-client
