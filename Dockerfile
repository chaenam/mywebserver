FROM unbuntu:14.04
MAINTAINER "Chaenam Jeong <cnjeong@gmail.com>" # option 임
LABEL "purpose"="webserver practice"
RUN apt-get update
RUN apt-get install apache2 -y
ADD test.html /var/www/html
WORKDIR /var/www/html
RUN ["/bin/bash", "-c", "echo hello >> test.html"]
EXPOSE 80
CMD apachectl -D FOREGROUND
