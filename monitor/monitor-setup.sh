#!/bin/bash
cp /etc/sysconfig/watchlog /etc/sysconfig/watchlog
ln -s /srv/monitor/watchlog.sh /usr/bin/watchlog.sh
ln -s /srv/monitor/watchlog.service /etc/systemd/system/watchlog.service
ln -s /srv/monitor/watchlog.timer /etc/systemd/system/watchlog.timer
systemctl daemon-reload
