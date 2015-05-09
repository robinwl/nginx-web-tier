#!/bin/bash
set -e

TEMPLATE="/usr/share/nginx/html/index.html"

# Insert values into template
sed -i "s/HOSTNAME_STR/$HOSTNAME/g" $TEMPLATE
sed -i "s/KERNEL_STR/$(uname -srm)/g" $TEMPLATE
sed -i "s/NGINX_VERSION_STR/$NGINX_VERSION/g" $TEMPLATE

if [ -n "$msg" ] ; then
	sed -i "s/MSG_STR/$msg/g" $TEMPLATE
else
	sed -i '/MSG_STR/d' $TEMPLATE
fi

exec "$@"
