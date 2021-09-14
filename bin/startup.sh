#!/bin/sh

HS=$(hostname)
WORK_HOSTNAME="BN-EM-ADAM-P1G2"
PC_HOSTNAME="gomez"

if [ "$HS" = "$WORK_HOSTNAME" ]; then
    sh bin/ts3d/startup_ts3d.sh
elif [ "$HS" = "$PC_HOSTNAME" ]; then
    sh bin/gomez/startup_gomez.sh
else
    echo "UNKNOWN MACHINE"
fi

notify-send --expire-time 5000 "startup complete"

exit 0