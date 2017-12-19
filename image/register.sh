#!/bin/bash

echo -e '#! /bin/sh \n /usr/local/bin/php -dzend_extension=xdebug.so -dxdebug.remote_enable=1 $*' >> /usr/local/bin/php-xdebug && chmod +x /usr/local/bin/php-xdebug
echo -e 'extension=redis.so' > /usr/local/etc/php/conf.d/redis.ini
echo -e 'extension=mongodb.so' > /usr/local/etc/php/conf.d/mongodb.ini
