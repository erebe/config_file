#!/bin/bash

if [ -n "$1" ]
then
    amixer --quiet set Master 2dB$1
    exit 0
fi


# mute unmute
status=$(amixer get "Master" | awk '{ 
                                    if( $1 == "Mono:" ) {
                                        printf $NF 
                                    } 
                                }')

if [ "$status" == "[on]" ]
then
    amixer --quiet set "Master" mute
else
    amixer --quiet set "Master" unmute
fi
