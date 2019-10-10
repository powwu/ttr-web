#!/bin/bash
# Installing packages
clear; sudo apt-get install -y libguac-client-rdp0; sudo apt-get update && sudo apt-get install -y guacamole; sudo apt-get install -y openbox; sudo apt-get install -y xrdp;  sudo apt-get install -y xorgxrdp; sudo apt-get install -y mate-terminal; sudo apt-get install -y gnome-icon-theme; sudo apt-get install -y unzip; sudo apt-get install -y python; sudo apt-get install -y python-setuptools; sudo apt-get install -y supervisor; sudo apt-get install -y figlet; sudo apt-get install -y lolcat; sudo apt-get install -y lxde
wait

# Setting up supervisor
clear; sudo mkdir /etc/supervisor; sudo mkdir /etc/supervisor/conf.d; sudo cp ~/ttr-web/lib/startup.sh /usr/local/bin/; chmod +x /usr/local/bin/startup.sh; sudo cp ~/ttr-web/lib/startup.conf /etc/supervisor/conf.d/; sudo supervisorctl reread; sudo supervisorctl update;
wait

# Setting up tomcat8
clear; sudo rm /var/lib/tomcat8/webapps/ROOT/*; sudo rm /var/lib/tomcat8/webapps/ROOT/META-INF/*; sudo rmdir /var/lib/tomcat8/webapps/ROOT/META-INF; sudo rmdir /var/lib/tomcat8/webapps/ROOT; sudo cp ~/ttr-web/lib/ROOT.war /var/lib/tomcat8/webapps/
wait

# Setting up Shticker Book Rewritten
clear; sudo dpkg -i ~/ttr-web/lib/shticker-book-rewritten_1.2.1_amd64.deb; sudo apt-get install -y -f; sudo apt-get install -y libatomic1
wait

# Setting up Apache Guacamole
clear; sudo rm /etc/guacamole/user-mapping.xml; sudo cp ~/ttr-web/lib/user-mapping.xml /etc/guacamole/
wait

# Setting up DE
clear; sudo mv ~/ttr-web/lib/ttr-web /usr/local/bin/ttr-web; sudo chmod +x /usr/local/bin/ttr-web; sudo mv ~/ttr-web/lib/ttr-web.desktop /usr/share/xsessions/ttr-web.desktop

# Setting up xrdp
clear; sudo rm /etc/xrdp/startwm.sh; sudo cp ~/ttr-web/lib/startwm.sh /etc/xrdp/; chmod +x /etc/xrdp/startwm.sh; echo ttr-web >~/.xsession
wait

# Creating reminder file to start on boot
clear; sudo echo 'Please check the wiki on Github if you have a problem. If you find a bug, please put it in the Github issues page.' >/usr/lib/ttr-web/boot

# Restarting scripts
sudo /etc/init.d/tomcat8 restart; sudo /etc/init.d/guacd start; sudo /etc/init.d/xrdp restart

figlet Complete! | lolcat
echo "Reboot your server and continue following the steps in the README.md." | lolcat
