#    Installation
###     **Script is not currently finished, and so this will NOT work.**

##    Step 1: Script installation
This script is designed to work with Ubuntu 18.04 servers. If you would like to run this on another type of Linux server, please DM me on Twitter and I can work something out.

Install git if you haven't already:

`sudo apt-get install git`

⠀

Clone the repository to your desktop:

`cd ~/Desktop`

`git clone https://github.com/powwu/ttr-web.git`

⠀

Initiate install script:

`sudo ./install.sh`

⠀

Reboot your server. Check to see if the proper scripts are running with the following commands:

`/etc/init.d/tomcat8 status`

`/etc/init.d/guacd status`

if they are not running, run the startup script:
`sudo ./startup.sh`

⠀

##    Step 2: Port forwarding
### TL;DR forward ports 8080, 3389, and 4822.



