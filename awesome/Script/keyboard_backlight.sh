#!/bin/bash

device="/sys/class/leds/asus::kbd_backlight/brightness"
actual_value=$(cat $device)
pitch=1

next_value=$(expr $actual_value "$1" $pitch)
sudo su -c "echo $next_value > $device"
