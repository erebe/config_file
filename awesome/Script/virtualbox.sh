#!/bin/bash

sudo modprobe vboxdrv > /dev/null 2>&1
VirtualBox --startvm Windows7
