#!/bin/bash
cd /home/ec2-user/app
python3 main.py &
systemctl start httpd
systemctl enable httpd
