#!/bin/sh

COLORS=('green' 'red' 'blue' 'white' 'yellow' 'cyan' 'magenta' 'black')
COL="${COLORS[$(( $RANDOM % 8 ))]}"

i3-msg "exec kitty -e fish -c 'sleep 1 && cmatrix -s -u10 -C $COL'" -q
sleep 1
i3-msg "fullscreen enable" -q
