FROM debian:buster

RUN apt -y update \
&& apt -y install nginx \
&& apt -y install mariadb-server \
&& apt -y install php-fpm php-mysql php-mbstring php-zip php-gd php-curl php-intl php-soap php-xml php-xmlrpc \
&& rm /etc/nginx/sites-enabled/default

COPY srcs/localhost /etc/nginx/sites-available/

RUN ln -s /etc/nginx/sites-available/localhost /etc/nginx/sites-enabled/

COPY srcs/phpMyAdmin /var/www/html/phpMyAdmin
COPY srcs/wordpress /var/www/html/wordpress

RUN chown -R www-data:www-data /var/www/html

COPY srcs/start.sh .

CMD ["bash", "start.sh"]
