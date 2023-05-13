## Nextcloud with Redis and MariaDB Docker Compose file fork from docker offical example

[official nextcloud docker compose file](https://github.com/docker/awesome-compose/tree/master/nextcloud-redis-mariadb)

## Target scenario

For SBC(single board computer) with USB extended HDD. Verified Raspberry 4B and Khadas VIM3Pro/VIM4 + Ubuntu/Debian OS

external HDD is mount at /home/ubuntu/HDD

docker and docker compose is required [install instruction](https://docs.docker.com/engine/install/ubuntu/)

## Deploy

```
$ docker compose up -d
```

## Expected result

Navigate to `http://localhost:80` in your web browser to access the installed


Stop and remove the containers

```
$ docker compose down
```

To delete all data, remove all named volumes by passing the `-v` arguments:

```
$ docker compose down -v
```

## Mount external HDD

1，mount externel HDD at /home/ubuntu/HDD

2，add external storage in NextCloud Console
