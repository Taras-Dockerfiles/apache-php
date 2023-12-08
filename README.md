# Taras' Apache + PHP Dockerfile

Base on Ubuntu, with Apache, PHP, Node.js and other softwares tuned and installed.

> To run syslog in the container, `bash -c "service rsyslog start ; /usr/sbin/apache2ctl -D FOREGROUND"` should be set in the `command` option in `docker-compose.yaml`.

[Change Log](/CHANGELOG.md)
