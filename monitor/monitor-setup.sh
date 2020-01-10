#!/bin/bash
cp /srv/monitor/watchlog /etc/sysconfig/watchlog
ln -s /srv/monitor/watchlog.sh /usr/bin/watchlog.sh
ln -s /srv/monitor/watchlog.service /etc/systemd/system/watchlog.service
ln -s /srv/monitor/watchlog.timer /etc/systemd/system/watchlog.timer
systemctl daemon-reload

cat /var/log/yum.log > /var/log/watchlog.log
echo 'ALERT' >> /var/log/watchlog.log

systemctl start watchlog.timer
