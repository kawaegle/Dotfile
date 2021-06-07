#!/bin/sh

tempScreenshotFile=$HOME/Pictures/

# Create folder if not present
if [[ ! -e $tempScreenshotFile ]]; then
    mkdir -p $tempScreenshotFile
fi

if [[ $1 == "selection" ]]; then
    scrot -o $tempScreenshotFile/screenshoot_$(date +%F_%H_%M).png -s -e 'xclip -selection clipboard -target image/png -i $f'
else
    scrot -o $tempScreenshotFile/screenshoot_$(date +%F_%H_%M).png -e 'xclip -selection clipboard -target image/png -i $f'
fi
