FROM alpine:latest
MAINTAINER Andreas Pfeiffer - Netstack <pfeiffer@netstack.de>

#Install PHP
RUN apk add php81 php81-gd php81-mysqli php81-zip php81-sodium php81-tokenizer php81-mbstring

#Install Bash & git 
RUN apk add bash 
RUN apk add git

CMD ["/bin/bash"]
