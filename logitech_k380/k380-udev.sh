#!/bin/bash
LOGFILE=/tmp/logfilek380sh.log
echo "RUN: at `date` by `whoami` act $ACTION DEVNAME $DEVNAME" >> ${LOGFILE}
echo "Setting F-keys on for your K380!"

if [ "$ACTION" == "add" ];
then
    # configure k380 ($DEVPATH) at $DEVNAME
    /opt/logitech-k380/k380_conf -d $DEVNAME -f on
fi
