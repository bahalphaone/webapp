FROM ubuntu:18.04
MAINTAINER alpha bah (mamadoualpha01bah@gmail)
RUN apt-get update
RUN apt-get install -y nginx git
EXPOSE 80
#ADD  static-website-example/ /var/www/html/
# Supprimer le contenu du répertoire à chaque fois avant de clone
RUN rm -Rf /var/www/html/*
RUN git clone https://github.com/diranetafen/static-website-example.git /var/www/html
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
