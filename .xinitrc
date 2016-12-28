export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
export QT_QPA_PLATFORMTHEME=qt5ct
xrdb ~/.Xresources

systemctl --user import-environment DISPLAY XAUTHORITY

dbuslaunch="`which dbus-launch 2>/dev/null`"
if [ -n "$dbuslaunch" ] && [ -x "$dbuslaunch" ] && [ -z "$DBUS_SESSION_BUS_ADDRESS" ]; then
  if [ -n "$command" ]; then
    command="$dbuslaunch --exit-with-session $command"
  else
    eval `$dbuslaunch --sh-syntax --exit-with-session`
  fi
fi

if which dbus-update-activation-environment >/dev/null 2>&1; then
        dbus-update-activation-environment DISPLAY XAUTHORITY
fi

setxkbmap -layout "us,ru"
setxkbmap -option "grp:caps_toggle"

i3
