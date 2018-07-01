if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
	cowsay $(fortune)
    startx #start xorg
	xset -b #disable xorg beeps
	rmmod pcspkr
fi
