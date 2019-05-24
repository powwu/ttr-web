This project uses Guacamole, with source available [here](https://github.com/apache/guacamole-server) for the server and [here](https://github.com/apache/guacamole-client) for the client.
This project uses Xrdp, with source available [here](https://github.com/neutrinolabs/xrdp).
This project uses XorgXrdp, with source available [here](https://github.com/neutrinolabs/xorgxrdp).
This project uses FreeRDP, with source available [here](https://github.com/FreeRDP/FreeRDP).
This project uses Shticker Book Rewritten, with source available [here](https://github.com/madsciencecoder/Shticker-Book-Rewritten).
This project uses tomcat8, with source available [here](https://github.com/apache/tomcat).

#    Installation
###     **Script is not currently finished, and so this will NOT work.**

##    Step 1: Script installation
This script is designed to work with Ubuntu 18.04 servers. If you are looking for a reliable and cheap hosting service, I recommend DigitalOcean.

Install git if you haven't already:
```bash
sudo apt-get install git
```
⠀

Clone the repository to your desktop:
```bash
cd ~/Desktop
```
```bash
git clone https://github.com/powwu/ttr-web.git
```
⠀

Initiate install script:
```bash
sudo ./install.sh
```
⠀

Reboot your server. Check to see if the proper scripts are running with the following commands:
```bash
/etc/init.d/tomcat8 status
```
```bash
/etc/init.d/guacd status
```

if they are not running, run the startup script:
```bash
sudo ./startup.sh
```
⠀

##    Step 2: Port forwarding
### TL;DR forward ports 8080, 3389, and 4822.



