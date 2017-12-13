FROM php:7.0-alpine

RUN apk add --no-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing gnu-libiconv
ENV LD_PRELOAD /usr/lib/preloadable_libiconv.so php

# COPY INSTALL SCRIPTS
COPY ./image/*.sh /tmp/
RUN chmod +x /tmp/*.sh

COPY ./image/php.ini /usr/local/etc/php/

WORKDIR /tmp

RUN sh ./env.sh && \
    sh ./apk.sh && \
    sh ./composer.sh && \
    sh ./qa.sh

WORKDIR /app

RUN echo -e '#! /bin/sh \n /usr/local/bin/php -dzend_extension=xdebug.so -dxdebug.remote_enable=1 $*' >> /usr/local/bin/php-xdebug && chmod +x /usr/local/bin/php-xdebug
RUN echo -e 'extension=redis.so' > /usr/local/etc/php/conf.d/redis.ini
