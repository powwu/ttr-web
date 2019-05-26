#!/bin/bash
clear; sudo apt-get install -y libguac-client-rdp0; sudo apt-get update && sudo apt-get install -y guacamole; sudo apt-get install -y xfce4; sudo apt-get install -y xrdp;  sudo apt-get install -y xorgxrdp
wait
sudo rm /var/lib/tomcat8/webapps/ROOT/*
wait
sudo rm /var/lib/tomcat8/webapps/ROOT/META-INF/*
wait
sudo rmdir /var/lib/tomcat8/webapps/ROOT/META-INF
wait
sudo rmdir /var/lib/tomcat8/webapps/ROOT
wait
sudo cp ~/ttr-web/lib/ROOT.war /var/lib/tomcat8/webapps
wait
sudo dpkg -i ~/ttr-web/lib/shticker-book-rewritten_1.2.1_amd64.deb
wait
sudo apt-get install -y -f
wait
sudo rm /etc/guacamole/user-mapping.xml
wait
sudo cp ~/ttr-web/lib/user-mapping.xml /etc/guacamole
wait
sudo rm /etc/xrdp/startwm.sh
wait
sudo cp ~/ttr-web/lib/startwm.sh /etc/xrdp
wait
chmod +x /etc/xrdp/startwm.sh
wait
sudo rm ~/.config/xfce4/*
wait
sudo rmdir ~/.config/xfce4
wait
sudo cp ~/ttr-web/lib/config/xfce4 ~/.config/
wait
sudo cp ~/ttr-web/lib/ToontownRewritten.sh ~/Desktop/
wait
sudo /etc/init.d/tomcat8 restart
wait
sudo /etc/init.d/guacd start
wait
sudo /etc/init.d/xrdp restart


echo "Script completed! Reboot your server and continue following the steps in the README.md."
