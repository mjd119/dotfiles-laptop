#!/bin/sh
# Added by mjd119 (Arch Wiki)
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
# Start i3 if we call startx instead of using display manager
# Make sure this is before the 'exec' command or it won't be sourced. [added by mjd119](from Arch Wiki)
[ -f /etc/xprofile ] && . /etc/xprofile
[ -f ~/.xprofile ] && . ~/.xprofile
# Added by mjd119 to set desktop background on startup for betterlockscreen (betterlockscreen)
# set desktop background with custom effect
#betterlockscreen -w dim
# Alternative (set last used background) (fixed for laptop)
#source ~/.fehbg
# If statement from /etc/X11/xinit/xinitrc to give access to session dbus (mjd119)
# start some nice programs
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

exec i3
