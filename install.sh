#!/bin/bash
sudo apt-get install -y libguac-client-rdp0
wait
sudo apt-get install -y guacamole
wait
sudo apt-get install -y xrdp
wait
sudo apt-get install -y xorgxrdp
wait
sudo apt-get install -y cinnamon
wait
sudo apt-get install -y freerdp
wait
sudo rmdir /var/lib/tomcat8/webapps/ROOT
wait
sudo mv ./lib/ROOT.war /var/lib/tomcat8/webapps
wait
sudo dpkg -i ./lib/shticker-book-rewritten_1.2.1_amd64.deb
wait
sudo apt-get install -f
wait
sudo rm /etc/guacamole/user-mapping.xml
wait
cd ~/Desktop/ttr-web/lib/
wait
sudo mv user-mapping.xml /etc/guacamole
wait
sudo rm /etc/xrdp/startwm.sh
wait
cd ~/Desktop/ttr-web/lib/
wait
sudo mv startwm.sh /etc/xrdp
wait
sudo /etc/init.d/tomcat8 restart
wait
sudo /etc/init.d/guacd start
wait


echo "Script completed! Reboot your server and continue following the steps in the README.md."
