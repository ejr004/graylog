#!/bin/sh


# Create dir and set user permissions
mkdir -p es_data/ graylog_journal/ mongo_data/
chown -R 1000:1000 es_data/
chown -R 1100:1100 graylog_journal/
chown -R 999:999 mongo_data/

# Run docker compose 
docker-compose up -d

# List containers
docker ps -a

# Run on client machines:
#yum install -y rsyslog
#yum install epel-release -y

# echo "*.*                     @@152.84.101.157:1514" >> /etc/rsyslog.conf;systemctl restart rsyslog


# docker inspect -f '{{.HostConfig.LogConfig.Type}}' <CONTAINER>
#
#{
#  "log-driver": "syslog",
#  "log-opts": {
#    "tag": "{{.Name}}"
#  }
#}

#/etc/docker/daemon.json
