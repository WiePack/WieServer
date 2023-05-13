## Clash Deploy
```
$ sudo su
$ mkdir /opt/clash/ && cp ./* /opt/clash
$ cd /opt/clash

$ wget https://github.com/Dreamacro/clash/releases/download/v1.15.1/clash-linux-arm64-v1.15.1.gz
$ gzip -d clash-linux-arm64-v1.15.1.gz
$ mv clash-linux-arm64-v1.15.1 clash
$ chmod +x clash

$ wget https://github.com/Dreamacro/maxmind-geoip/releases/download/20230512/Country.mmdb

$ wget  -O config.yaml YOUR_SUBSCRIBE_LINK
$ vi config.yaml # update  **external-ui** with /opt/clash/clash-dashboard/
```


## start Clash and auto-start on reboot
```
# star Clash
$ /opt/clash/clash -d /opt/clash
# auto-start
$ cp ./clash.service /etc/systemd/system/
$ systemctl enable clash
$ systemctl start clash
```

## Usage
set HTTP/S proxy on device with IP_of_WieServer and 7890 port
to change node, visit address `http://localhost:9090/ui` in your web browser

## Update exeutable
For newer clash executable, Country.mmdb and clash-dashboard, please refer to below release channel
https://github.com/Dreamacro/clash/releases/  choose clash-linux-arm64 version
https://github.com/Dreamacro/maxmind-geoip/releases/ 
https://github.com/Dreamacro/clash-dashboard/tree/gh-pages
