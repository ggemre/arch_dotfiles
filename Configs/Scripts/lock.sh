#!/bin/sh

i3-msg "exec alacritty -e fish -c 'sleep 1 && cmatrix -s -u10'"
sleep 1
i3-msg "fullscreen enable"
