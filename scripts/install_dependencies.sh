#!/bin/bash
yum install -y python3 pip
sudo yum install -y httpd
pip3 install flask
pip3 install gunicorn
pkill -f "python3 main.py"
cat > /etc/httpd/conf.d/myapp.conf << 'EOF'
<VirtualHost *:80>
    ProxyPreserveHost On
    ProxyPass / http://127.0.0.1:5000/
    ProxyPassReverse / http://127.0.0.1:5000/

    ErrorLog /var/log/httpd/flask-app-error.log
    CustomLog /var/log/httpd/flask-app-access.log combined
</VirtualHost>
EOF
sudo systemctl restart httpd
