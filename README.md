# Graylog server


# Instructions:

Clone this repo

```
git clone https://github.com/ejr004/graylog
```

Edit docker-compose and set password, timezone, etc.
```
vim docker-compose.yml
```

Run config.sh

```
./config.sh
```

Access your server at http://<your-serverip>:9000

## Set your client machines:

Run on client machines:
_PS: @@ for TCP and @ for UDP_
```
yum install -y rsyslog

echo "*.*                     @@<your-graylogserver-ip>:port" >> /etc/rsyslog.conf;systemctl restart rsyslog
```

More info: https://docs.graylog.org/en/3.3/
