# Taras' Apache + PHP Dockerfile

Base on Ubuntu, with Apache, PHP, Node.js and other softwares tuned and installed.

> To run syslog in the container, `bash -c "service rsyslog start ; /usr/sbin/apache2ctl -D FOREGROUND"` should be set in the `command` option in `docker-compose.yaml`.

## Release Notes

> For older dockerfiles earlier than version 3.8, see the old [Wujidadi Dockerfiles](https://github.com/Wujidadi/Dockerfiles) repository.

[Change Log](/CHANGELOG.md)
