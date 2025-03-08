#!/bin/bash

# # Starts ssh

# /usr/sbin/sshd

# # Starts php process in background

# /usr/sbin/php-fpm --nodaemonize --fpm-config /etc/php-fpm.conf &

# # Starts nginx daemon

# nginx -g 'daemon off;'

# Start PHP-FPM
php-fpm

# Start Nginx in foreground
nginx -g "daemon off;"