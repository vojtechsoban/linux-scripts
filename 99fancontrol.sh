#!/bin/bash
case "$1" in
hibernate|suspend)
# Stopping is not required.
;;
thaw|resume)
# In background.

for cooling_device in $(ls /sys/devices/virtual/thermal/cooling_device?/cur_state -1)
do
echo -n 0 > $cooling_device
sleep 2
done
;;
*) exit $NA
;;
esac
