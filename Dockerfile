FROM debian:buster

RUN apt -y update \
&& apt -y install nginx \
&& apt -y install mariadb-server \
&& apt -y install php-fpm php-mysql php-mbstring php-zip php-gd php-curl php-intl php-soap php-xml php-xmlrpc \
&& rm /etc/nginx/sites-enabled/default

ADD localhost /etc/nginx/sites-avalaible/

RUN ln -s /etc/nginx/sites-available/localhost /etc/nginx/sites-enabled/

ADD phpMyAdmin /var/www/html/

RUN chown -R www-data:www-data /var/www/html

CMD ["sh", "start.sh"]
