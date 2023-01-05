FROM ubuntu
RUN chown -R node /app/node_modules
RUN apt update -y
RUN apt install apache2 -y
COPY index.html /var/www/html/
CMD ["/usr/sbin/apache1", "-D", "FOREGROUND"]
