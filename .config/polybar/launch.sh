#!/bin/bash

pkill polybar
polybar -r top &

if [[ $(xrandr -q | grep 'HDMI-1 connected') ]]; then
    polybar -r top_external &
fi
