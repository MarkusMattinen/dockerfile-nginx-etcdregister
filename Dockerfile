# nginx, etcd registration and supervisord on trusty
FROM markusma/nginx:1.5
MAINTAINER Markus Mattinen <docker@gamma.fi>

ADD config/etc/supervisor/conf.d /etc/supervisor/conf.d
ADD config/register /register
