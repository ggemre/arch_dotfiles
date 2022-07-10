#!/usr/bin/env bash

FILE="$HOME/etc/rofi/config/colors.rasi"

## random accent color
COLORS=('#fb4934' '#b8bb26' '#fabd2f' '#83a598' '#d3869b' '#8ec07c')
AC="${COLORS[$(( $RANDOM % 6 ))]}"
#SE="${COLORS[$(( $RANDOM % 6 ))]}"
sed -i -e "s/ac: .*/ac:   ${AC}FF;/g" $FILE
sed -i -e "s/se: .*/se:   ${AC}FF;/g" $FILE

rofi -no-config -no-lazy-grab -show drun -modi drun -theme ~/etc/rofi/config/launcher.rasi
