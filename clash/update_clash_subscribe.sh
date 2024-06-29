#!/bin/bash

subscribe_url="UPDATE_YOUR_SUBSCRIBE_URL_HERE"
local_file="/opt/clash/new_config.yaml"

wget -O "$local_file" "$subscribe_url"

sed -i '/external-controller:/a\external-ui: /opt/clash/clash-dashboard' "$local_file"
sed -i 's/^\(allow-lan:\).*/\1 true/' "$local_file"
sed -i "s/^\(external-controller:\).*/\1 ':9090'/" "$local_file"


mv "$local_file" /opt/clash/config.yaml

systemctl restart clash
