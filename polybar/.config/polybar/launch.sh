#!/bin/bash

pkill polybar
polybar -r top &

if [[ $(xrandr -q | grep 'HDMI1 connected') ]]; then
    polybar -r top_external &
fi
