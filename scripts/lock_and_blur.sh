#!/usr/bin/env bash

if [ -e /tmp/blur.png ]
then
    rm /tmp/blur.png
    # take a screenshot
    scrot /tmp/current.png
    # adding blur
    convert -blur 0x4 /tmp/current.png /tmp/blur.png
else
    cp ~/Pictures/blurred.png /tmp/blur.png
fi

# adding overlay
composite -gravity center ~/Pictures/lock-icon.png /tmp/blur.png /tmp/screen.png

PARAM=(--insidecolor=ffffff00 --ringcolor=ffffff1a \
       --keyhlcolor=ffffffbf --separatorcolor=00000000\
       --ring-width=5.0 --bshlcolor=fbb8b5bf\
       --linecolor=ffffff00 --ringvercolor=afd0ff40\
       --insidevercolor=00000000 \
       --ringwrongcolor=ff5473bf --insidewrongcolor=00000000 \
       --veriftext="" --wrongtext="" --noinputtext="")

# lock the screen with the blurred screenshot
i3lock "${PARAM[@]}" -i /tmp/screen.png 

rm /tmp/current.png
rm /tmp/screen.png
