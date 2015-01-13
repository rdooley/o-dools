#!/bin/bash
#

THEMEDIR="$HOME/.config/awesome/themes/o-dools"
WALLPAPER="/usr/share/awesome/themes/zenburn/zenburn-background.png"

case "$1" in
	*)	killall conky
		awsetbg "$WALLPAPER"
		conky -c "$THEMEDIR"/conky/conkyhr &
		conky -c "$THEMEDIR"/conky/conkymin &
		conky -c "$THEMEDIR"/conky/conkydate &
		conky -c "$THEMEDIR"/conky/conkystats &;;
esac

