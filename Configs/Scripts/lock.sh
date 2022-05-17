#!/bin/sh

SCREEN_SAVER="alacritty --command cmatrix -s -u10"
i3-msg "exec $SCREEN_SAVER"
sleep 1
i3-msg "fullscreen enable"
