#!/bin/bash
set -e

sudo yum update -y
sudo yum install -y tomcat httpd mod_proxy mod_proxy_http

sudo tee /etc/httpd/conf.d/tomcat_manager.conf > /dev/null <<EOF
<VirtualHost *:80>
    ServerAdmin root@localhost
    ServerName app.nextwork.com
    ProxyRequests Off
    ProxyPreserveHost On
    ProxyPass / http://localhost:8080/nextwork-web-project/
    ProxyPassReverse / http://localhost:8080/nextwork-web-project/
</VirtualHost>
EOF

