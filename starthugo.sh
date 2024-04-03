#!/bin/bash
echo "Hallo"
cd 0_HUGO/
gnome-terminal -- hugo server &
cd ..
sleep 2s
firefox -foreground -new-window localhost:1313
