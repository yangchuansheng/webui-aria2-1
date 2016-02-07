#!/bin/sh

sed -i "s@%RPC_HOST%@${RPC_HOST:-127.0.0.1}@g" /var/www/webui-aria2/configuration.js
sed -i "s@%RPC_PORT%@${RPC_PORT:-6800}@g" /var/www/webui-aria2/configuration.js
sed -i "s@%RPC_SECRET%@${RPC_SECRET:-}@g" /var/www/webui-aria2/configuration.js

/usr/sbin/nginx -g "daemon off;"
