#!/bin/bash
devices=$(ls /sys/devices/virtual/thermal/cooling_device?/cur_state -1)
#echo Cooling devices: $devices
for cooling_device in $devices
do
#echo cooling down device: $cooling_device
sudo sh -c "echo -n 0 > $cooling_device"
sleep 2
done
