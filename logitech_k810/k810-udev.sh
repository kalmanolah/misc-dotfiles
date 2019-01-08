#!/bin/sh
LOGFILE=/tmp/logfilek810sh.log
echo "RUN: at `date` by `whoami` act $ACTION \$1 $1 DEVPATH $DEVPATH DEVNAME $DEVNAME" >> ${LOGFILE}
echo "Setting F-keys on for your K810!"

if [ "$ACTION" == "add" ];
then
    # configure k810 ($DEVPATH) at $DEVNAME.
    /opt/logitech-k810/k810_conf -d $DEVNAME -f on
fi
