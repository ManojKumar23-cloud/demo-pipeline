#!/bin/bash
cd /var/www/html/app
python3 main.py &
systemctl start httpd
systemctl enable httpd
