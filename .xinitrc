XDG_CURRENT_DESKTOP=KDE
export DESKTOP_SESSION=kde
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
xrdb ~/.Xresources

# hint gpg-agent for pinentry changes
gpg-connect-agent updatestartuptty /bye

# Enable tap on fast click
if type synclient 2>&1 > /dev/null
then
	synclient TapButton1=1 TapButton2=3 TapButton3=2
fi

xrandr --output HDMI-1 --right-of eDP-1 --auto

i3
