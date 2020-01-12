#!/bin/bash
sed -i '/Listen 80/d' /etc/httpd/conf/httpd.conf
cp /srv/httpd/httpd@.service /etc/systemd/system
cp /srv/httpd/template.conf /etc/httpd/conf.d/template.conf
cp /srv/httpd/httpd-first /etc/sysconfig
cp /srv/httpd/httpd-second /etc/sysconfig

systemctl enable httpd@service
systemctl start httpd@first
 systemctl start httpd@second
