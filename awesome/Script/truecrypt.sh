#!/bin/bash

sudo mount /mnt/DATA/
sudo modprobe loop
(truecrypt /mnt/DATA/data.tc && thunar /media/truecrypt1/) || truecrypt -d
