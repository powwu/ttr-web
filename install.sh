#!/bin/bash
clear; sudo apt-get install -y libguac-client-rdp0; sudo apt-get update && sudo apt-get install -y guacamole; sudo apt-get install -y xrdp;  sudo apt-get install -y xorgxrdp; sudo apt-get install -y cinnamon; sudo apt-get install -y freerdp-x11
wait
sudo rm /var/lib/tomcat8/webapps/ROOT
wait
sudo mv ~/ttr-web/lib/ROOT.war /var/lib/tomcat8/webapps
wait
sudo dpkg -i ~/ttr-web/lib/shticker-book-rewritten_1.2.1_amd64.deb
wait
sudo apt-get install -y -f
wait
sudo rm /etc/guacamole/user-mapping.xml
wait
wait
sudo mv ~/ttr-web/lib/user-mapping.xml /etc/guacamole
wait
sudo rm /etc/xrdp/startwm.sh
wait
sudo mv ~/ttr-web/lib/startwm.sh /etc/xrdp
wait
sudo /etc/init.d/tomcat8 restart
wait
sudo /etc/init.d/guacd start
wait


echo "Script completed! Reboot your server and continue following the steps in the README.md."
