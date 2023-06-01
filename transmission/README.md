## transmission install
```
$ sudo apt install transmission
$ sudo apt transmission-daemon
```


## config transmission
```
$ sudo service transmission-daemon stop
$ sudo vim /etc/transmission-daemon/settings.json

# "download-dir": "/home/share/downloads" #change to your_download_path
# "rpc-authentication-required": true
# "rpc-enabled": true
# "rpc-password": "password"       #change to your own password
# "rpc-username": "transmission" # change to your own name
# "rpc-whitelist-enabled": false

$ sudo service transmission-daemon start
```
