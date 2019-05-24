#!/bin/bash
sudo -i
apt-get install libguac-client-rdp0 -y
apt-get install guacamole -y
apt-get install xrdp -y
apt-get install xorgxrdp -y
rm /var/lib/tomcat8/webapps/ROOT
mv ./lib/ROOT.war /var/lib/tomcat8/webapps/
dpkg -i ./lib/shticker-book-rewritten_1.2.1_amd64.deb
apt-get install -f
