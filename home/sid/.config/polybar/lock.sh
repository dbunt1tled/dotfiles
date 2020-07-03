#!/bin/bash
ICON=~/.config/polybar/lock.png
TMPBG=~/.config/polybar/screen.png
scrot ~/.config/polybar/screen.png
convert $TMPBG -scale 10% -scale 1000% $TMPBG
convert $TMPBG $ICON -gravity center -composite -matte $TMPBG
i3lock -t -i $TMPBG