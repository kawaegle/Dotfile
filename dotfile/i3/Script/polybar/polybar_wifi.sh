#!/bin/sh

if [[ $(nmcli device wifi list | grep "*") ]]
then
	echo "%{F#f5f5f5}"
else
	echo "%{F#5f5f5f}"
fi