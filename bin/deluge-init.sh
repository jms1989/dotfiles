# Courtesy of Whatbox IRC User: Deerocket
#! /bin/sh

DAEMON="deluged"

# Carry out specific functions when asked to by the system
case "$1" in
  start)
    if [ "$( pgrep -x -U $(whoami) $DAEMON )" != ""  ]; then
        echo "* $DAEMON Already Running"
    else
        echo "* Starting $DAEMON"
        $DAEMON
    fi
    ;;
  stop)
    echo "* Stopping $DAEMON"
    while [ "$( pgrep -x -U $(whoami) $DAEMON )" != ""  ]; do
      echo "Waiting for $DAEMON to terminate"
      killall -u $(whoami) -9 $DAEMON
    done
    ;;
  restart)
    $0 stop
    $0 start
    ;;
  reload)
    echo "* Reloading $DAEMON Settings"
    killall -u $(whoami) -HUP $DAEMON
    ;;
  *)
    echo "Usage: $0 {start|stop|restart}"
    exit 1
    ;;
esac

exit 0
