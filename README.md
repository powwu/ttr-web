All sources to software I used in the making of this project are located at the **very bottom**.
#    Installation (incomplete)
##    Step 1: Installing via the Script
This script is designed to work with Ubuntu 18.04 servers. **Due to TTR's VPN blocking, running this from the cloud requires a bit of configuring (but home servers are A-OK!). For more information, visit the Troubleshooting tab of the wiki.**

Install git if you haven't already:
```bash
sudo apt-get install git
```
⠀

Clone the repository to your home folder:
```bash
cd ~/
```
```bash
git clone https://github.com/powwu/ttr-web.git
```
```bash
cd ~/ttr-web/
```
⠀

Initiate install script:
```bash 
chmod +x ./install.sh
```
```bash
sudo ./install.sh
```
##### Wait. The script will take a while.


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
chmod +x ~/ttr-web/startup.sh
sudo ~/ttr-web/startup.sh
```
⠀

##    Step 2: Port forwarding
### TL;DR forward ports 8080, 3389, and 4822 over TCP.

If you're running a cloud-based server, this (probably) doesn't apply to you! Please skip to Step 3.

Open your router settings. This will be usually located at `192.168.1.1`. If prompted for a password, enter it accordingly. If you do not know where a password is, the router password is typically located on a sticker attached to the router itself.

Once logged in, look for a section called "*Port Forwarding*". Here, you will need to select your server, TCP connection, and port 8080. Then, repeat the previous instructions with port 3389, and then once more with port 4822. Make sure you apply the changes!


# Credits

This project uses Guacamole, with source available [here](https://github.com/apache/guacamole-server) for the server and [here](https://github.com/apache/guacamole-client) for the client.

This project uses Xrdp, with source available [here](https://github.com/neutrinolabs/xrdp).

This project uses XorgXrdp, with source available [here](https://github.com/neutrinolabs/xorgxrdp).

This project uses Shticker Book Rewritten, with source available [here](https://github.com/madsciencecoder/Shticker-Book-Rewritten).

This project uses tomcat8, with source available [here](https://github.com/apache/tomcat).
