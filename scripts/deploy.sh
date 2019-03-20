#!/bin/sh

set -e

sudo rm -rf /var/lib/tomcat8/webapps/book
sudo mkdir /var/lib/tomcat8/webapps/book
sudo unzip target/bookstore-0.1.war -d /var/lib/tomcat8/webapps/book
