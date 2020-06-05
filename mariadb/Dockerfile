FROM mariadb
# on utilise l'uid de l'utilisateur host
ARG uid=1000
ARG gid=1000
RUN groupadd -g $gid myuser && useradd -lm -u $uid -g $gid myuser
USER myuser
