#!/bin/sh

tempScreenshotFile=$HOME/Pictures/
name=screenshoot_$(date +%F_%H_%M).png
# Create folder if not present
if [[ ! -e $tempScreenshotFile ]]; then
    mkdir -p $tempScreenshotFile
fi

if [[ $1 == "selection" ]]; then
    scrot -o $tempScreenshotFile/$name -s -e 'xclip -selection clipboard -target image/png -i $f'
    notify-send -a "" "Screenshot $name took."
else
    scrot -o $tempScreenshotFile/$name -e 'xclip -selection clipboard -target image/png -i $f'
    notify-send -a "" "Screenshot $name took."
fi
