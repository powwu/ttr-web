#!/bin/bash
# Installing packages
clear; sudo apt-get install -y libguac-client-rdp0; sudo apt-get update && sudo apt-get install -y guacamole; sudo apt-get install -y xfce4; sudo apt-get install -y xrdp;  sudo apt-get install -y xorgxrdp; sudo apt-get install -y mate-terminal; sudo apt-get install -y gnome-icon-theme; sudo apt-get install -y unzip; sudo apt-get install -y python; sudo apt-get install -y python-setuptools; sudo apt-get install -y supervisor
wait

# Setting up supervisor
clear; sudo easy_install supervisor; sudo mkdir /etc/supervisor; sudo cp ~/ttr-web/lib/supervisord.conf /etc/supervisor/; sudo mkdir /etc/supervisor/conf.d; sudo cp ~/ttr-web/lib/supervisord.service /etc/systemd/system/; sudo cp ~/ttr-web/lib/startup.sh /bin/; chmod +X /bin/startup.sh; sudo cp ~/ttr-web/lib/startup.conf /etc/supervisor/conf.d/; sudo supervisorctl reread; sudo supervisorctl update; sudo supervisorctl
wait

# Setting up tomcat8
clear; sudo rm /var/lib/tomcat8/webapps/ROOT/*; sudo rm /var/lib/tomcat8/webapps/ROOT/META-INF/*; sudo rmdir /var/lib/tomcat8/webapps/ROOT/META-INF; sudo rmdir /var/lib/tomcat8/webapps/ROOT; sudo cp ~/ttr-web/lib/ROOT.war /var/lib/tomcat8/webapps
wait

# Setting up Shticker Book Rewritten
clear; sudo dpkg -i ~/ttr-web/lib/shticker-book-rewritten_1.2.1_amd64.deb; sudo apt-get install -y -f; sudo apt-get install -y libatomic1
wait

# Setting up Apache Guacamole
clear; sudo rm /etc/guacamole/user-mapping.xml; sudo cp ~/ttr-web/lib/user-mapping.xml /etc/guacamole
wait

# Setting up xfce4
sudo unzip ~/ttr-web/lib/xfce4.zip; sudo unzip ~/ttr-web/lib/Thunar.zip; sudo cp ~/ttr-web/lib/xfce4 ~/.config/; sudo cp ~/ttr-web/lib/Thunar ~/.config/
wait

# Setting up xrdp
clear; sudo rm /etc/xrdp/startwm.sh; sudo cp ~/ttr-web/lib/startwm.sh /etc/xrdp; chmod +x /etc/xrdp/startwm.sh; echo xfce4-session >~/.xsession
wait

# Restarting scripts
sudo /etc/init.d/tomcat8 restart; sudo /etc/init.d/guacd start; sudo /etc/init.d/xrdp restart


echo "Script completed! Reboot your server and continue following the steps in the README.md."
