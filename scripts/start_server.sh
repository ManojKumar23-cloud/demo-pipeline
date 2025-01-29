#!/bin/bash
cd /var/www/html/app
gunicorn -b 127.0.0.1:5000 main:app --daemon 
systemctl start httpd
systemctl enable httpd
