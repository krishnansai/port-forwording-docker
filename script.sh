#!/bin/bash

#install git
apt install git -y

#install apache server to host website
apt install apache2 -y

#install local tunnel for public url
npm install -g localtunnel

#remove the nginx default page
rm -rf /var/www/html/*

#clone the demo html repo from github
git clone https://github.com/krishnansai/html.git

# mv html file to the server dir place your dir name
mv /app/html/* /var/www/html/

