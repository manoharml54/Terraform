#!/bin/bash

sudo yum update && sudo yum install nginx -y
sudo systemctl start nginx
echo "<h1>Server from Terraform</h1>" >> /usr/share/nginx/html/index.html