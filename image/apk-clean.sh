#!/bin/bash

apk del --purge .build-deps
rm -rf /tmp/pear ~/.pearrc /var/tmp/* /tmp/*
