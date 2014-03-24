#!/bin/bash

device="/sys/class/backlight/intel_backlight/brightness"
actual_value=$(cat $device)
pitch=300


next_value=$(expr $actual_value "$1" $pitch)
sudo su -c "echo $next_value > $device"
