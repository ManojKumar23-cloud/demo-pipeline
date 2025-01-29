#!/bin/bash
yum install -y python3 pip
pip3 install flask
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
