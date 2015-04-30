#!/bin/sh
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

#exec dbus-launch openbox-session
#exec ck-launch-session dbus-launch openbox-session
setxkbmap -option terminate:ctrl_alt_bksp &
xset -dpms &
xset m 1/2 1 &
xset s off &
xset r rate 200 50 &
stty -ixon &
exec openbox-session
