FROM debian
RUN apt update -y
RUN apt upgrade -y
RUN apt-get install -y php-cli curl
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer
# utile pour composer
RUN apt-get install -y php-mbstring php-dom git
# pour faire fonctionner mysql
RUN apt-get install -y php-mysql mariadb-client
# on utilise l'uid de l'utilisateur host
ARG uid=1000
ARG gid=1000
RUN groupadd -g $gid myuser && useradd -lm -u $uid -g $gid myuser
USER myuser
# on se rend dans l'application
WORKDIR /projet/laravel_app
