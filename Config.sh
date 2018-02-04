#!/bin/bash

sudo yum -y update

sudo rpm -Uvh http://nginx.org/packages/centos/7/noarch/RPMS/nginx-release-centos-7-0.el7.ngx.noarch.rpm

sudo yum -y install nginx

sudo systemctl start nginx.service

sudo systemctl enable nginx

echo "2.1.3" > version.txt

sudo cp version.txt /usr/share/nginx/html/

