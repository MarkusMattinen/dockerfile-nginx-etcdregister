# nginx, etcd registration, confd and supervisord on trusty
FROM markusma/nginx:trusty
MAINTAINER Markus Mattinen <docker@gamma.fi>

ADD config/etc/supervisor/conf.d /etc/supervisor/conf.d
ADD config/register /register
