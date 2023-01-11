FROM alpine:latest
MAINTAINER Andreas Pfeiffer - Netstack <pfeiffer@netstack.de>

#Install PHP
RUN apk add php81 php81-gd php81-mysqli php81-zip php81-sodium php81-tokenizer php81-mbstring php81-intl php81-curl php81-xml php81-pdo php81-phar

#Install Bash, git & curl
RUN apk add bash 
RUN apk add git
RUN apk add curl

#Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

CMD ["/bin/bash"]
