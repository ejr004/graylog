# Graylog server

This repo sets a graylog server using docker-compose.

more info:
https://docs.docker.com/
https://docs.docker.com/compose/
https://docs.graylog.org/en/3.3/

# Instructions:

Clone this repo

```
git clone https://github.com/ejr004/graylog
```

Edit docker-compose (search for CHANGE ME) and set password, timezone, etc.
```
vim docker-compose.yml
```

Run config.sh

```
./config.sh
```

Set firewall rules
```
sudo firewall-cmd --permanent --zone=public --add-port=9000/tcp
sudo firewall-cmd --permanent --zone=public --add-port=12900/tcp
sudo firewall-cmd --permanent --zone=public --add-port=1514/tcp
sudo firewall-cmd --reload
````

Access your server at http://<your-serverip>:9000

## Set your client machines:

Run on client machines:
_PS: @@ for TCP and @ for UDP_
```
yum install -y rsyslog

echo "*.*                     @@<your-graylogserver-ip>:port" >> /etc/rsyslog.conf;systemctl restart rsyslog
```

