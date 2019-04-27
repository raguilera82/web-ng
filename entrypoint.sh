#!/bin/sh

cp -fv /usr/share/nginx/html/assets/config/config.${PHASE}.json /usr/share/nginx/html/assets/config/config.json
nginx -g 'daemon off;'