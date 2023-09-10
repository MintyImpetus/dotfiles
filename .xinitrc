#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi
[ -f /tmp/startxran ] && exit
touch /tmp/startxran
picom &
sh ~/scripts/dwmdaemon &
#setwallpaper &
#xinput --set-prop 9 'libinput Accel Profile Enabled' 0, 1
#xinput set-prop '9' 'libinput Accel Speed' -0.8
/usr/libexec/xfce-polkit &
#xfce-polkit &
dbus-run-session dwm
rm /tmp/startxran
