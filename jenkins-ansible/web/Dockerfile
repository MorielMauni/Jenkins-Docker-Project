FROM remote-host

COPY ./conf/nginx.repo /etc/yum.repos.d/nginx.repo

RUN dnf -y install epel-release && \
    dnf -y install nginx openssl && \
    dnf -y install https://rpms.remirepo.net/enterprise/remi-release-9.rpm && \
    dnf -y module reset php && \
    dnf -y module enable php:remi-7.4 && \
    dnf -y install \
    php-fpm \
    php-cli \
    php-mysqlnd \
    php-soap \
    php-xml \
    php-zip \
    php-json \
    php-mbstring \
    php-gd && \
    dnf clean all

# Create necessary directories and set permissions
RUN mkdir -p /var/run/php-fpm && \
    mkdir -p /var/log/php-fpm && \
    chown -R nginx:nginx /var/run/php-fpm && \
    chown -R nginx:nginx /var/log/php-fpm

EXPOSE 80 443

VOLUME /var/www/html /var/log/nginx /var/log/php-fpm /var/lib/php-fpm

COPY ./conf/nginx.conf /etc/nginx/conf.d/default.conf
COPY ./conf/www.conf /etc/php-fpm.d/www.conf
COPY ./conf/bin/start.sh /start.sh

RUN chmod +x /start.sh

CMD ["/start.sh"]