#!/bin/sh

# nginxnのログを更新
sudo mv /var/log/nginx/access.log /var/log/nginx/access.log.`date +%Y%m%d-%H%M%S`
sudo nginx -s reopen

# mysqlを再起動
sudo systemctl restart mysql