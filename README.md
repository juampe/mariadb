# mariadb

multiarch build to have arm 32 docker image

[github repo](https://github.com/juampe/mariadb)

Example of use

```docker run --init -d --restart=always --network=my_mac_vlan_net --ip 192.168.0.138 --dns 192.168.123.123 --name="mariadb" -v /opt/docker/mariadb/data:/var/lib/mysql -v /opt/docker/mariadb/config:/etc/mysql -e "TZ=Europe/Madrid" -e "MYSQL_ROOT_PASSWORD=xxxxxx" --privileged juampe/mariadb```
