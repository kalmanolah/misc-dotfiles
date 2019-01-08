#!/bin/bash
LOGFILE=/tmp/logfilek810sh.log
echo "RUN: at `date` by `whoami` act $ACTION DEVNAME $DEVNAME" >> ${LOGFILE}
echo "Setting F-keys on for your K810!"

if [ "$ACTION" == "add" ];
then
    /usr/bin/setxkbmap be
    # configure k810 ($DEVPATH) at $DEVNAME
    /opt/logitech-k810/k810_conf -d $DEVNAME -f on
fi
