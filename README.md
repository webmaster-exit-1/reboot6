<pre>     ______ ______ ______ ______ ______ ______ ________________ ______ 
    ||R  | ||E  | ||B  | ||O  | ||O  | ||T  | ||             | ||6  | |
    ||___| ||___| ||___| ||___| ||___| ||___| ||_____________| ||___| |
    |/____\|/____\|/____\|/____\|/____\|/____\|/______________\|/____\|</pre>
---

![](./reboot6.gif)

---
Something that does something to init.d that does something else when the computer does something.<br>
That's inspired from Russian Roulette.
---
<p><b><ins>What this software intends to do</ins></b>:<br> 
Create an init.d startup process that has a 1 in 6 chance of wiping all drives completly clean.<br> 
The script will continue to execute on each powercycle as the start function of reboot6 is atomic.<br> 
So pretty much, It does something when you install it and reboot or something, I don't know. It's code that does stuff.<br>
</p>

* _This software has no known failsafe's to stop it from executing once installed._
* _This software has ZERO dependencies._
* _This software is small, like really really small._
* _This software is intended only for educational purposes. USE AT YOUR OWN RISK._

**The project author and all contributors cannot be held liable for any damage or loss of data resulting from the use of this repository's code.**

* A special Thank you, & Credit to matrix5009 for contributions to this script.
---

## To INSTALL the script:

<b><ins>ALL SYSTEMS</ins></b>
```bash
cp reboot6.sh /etc/init.d/reboot6.sh
```
<b><ins>RHEL and Fedora</ins></b>
```bash
chkconfig --add /etc/init.d/reboot6.sh
```
```bash
chkconfig --level 125 /etc/init.d/reboot6.sh on
```
```bash
ln -s /etc/init.d/reboot6.sh /etc/rc2.d/S35reboot6
```
<b><ins>Debian and Deriatives</ins></b>
```bash
update-rc.d reboot6.sh defaults 10 2 3 4 5 .
```

---

## To UNINSTALL the script:

<b><ins>RHEL and Fedora</ins></b>
```bash
chkconfig --level 125 /etc/init.d/reboot6.sh off
```
```bash
chkconfig --del /etc/init.d/reboot6.sh
```
<b><ins>Debian and Deriatives</ins></b>
```bash
update-rc.d reboot6.sh disable
```
```bash
update-rc.d reboot6.sh remove
```
<b><ins>ALL SYSTEMS</ins></b>
```bash
rm /etc/init.d/reboot6.sh
```

What do you think about using init.d as an attack vector? I'm interested to see what anyone else could do using this install method. Create an issue and leave a message. I'm always interested in how other people see and use things.
