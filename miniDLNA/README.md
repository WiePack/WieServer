## miniDLNA install
```
$ sudo apt-get install minidlna
```


## config miniDLNA
```
$ sudo vi /etc/minidlna.conf

# uncommon media_dir and add file_path to Video path
# uncommon inotify=yes
```

## auto start on reboot
```
$ sudo update-rc.d minidlna defaults
$ sudo update-rc.d -f minidlna remove
$ sudo service minidlna start/stop/restart
$ sudo service minidlna force-reload 
```

## change path auth
```
$ sudo chmod 777 [file_path]
```
