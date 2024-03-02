#!/bin/bash

subscribe_url="UPDATE_YOUR_SUBSCRIBE_URL_HERE"
local_file="/opt/clash/new_config.yaml"

wget -O "$local_file" "$subscribe_url"

sed -i 's/# external-ui: folder/external-ui: \/opt\/clash\/clash-dashboard\//' "$local_file"

mv "$local_file" /opt/clash/config.yaml
