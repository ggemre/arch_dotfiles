#!/bin/bash

MINUTES_TO_LOCK=8

let "idle_ms = $MINUTES_TO_LOCK * 60 * 1000" #1000
LOCKED=false

while :
do
	let "idle_time = $(xssstate -i)"
	if [ $((idle_ms)) -le $((idle_time)) ] && ! [ $LOCKED = true ];
	then
		bash ~/Scripts/lock.sh
		LOCKED=true
	fi
	if [ $((idle_time)) -le 10 ] && [ $LOCKED = true ];
	then
		LOCKED=false
		sleep 2
	fi
	
	sleep 5
done
