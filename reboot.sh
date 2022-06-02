#!/bin/sh

mv /var/log/nginx/access.log /var/log/nginx/access.log.`date +%Y%m%d-%H%M%S`

# nginxにログファイルを開き直すシグナルを送信する
nginx -s reopen