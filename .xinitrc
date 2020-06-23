# Added by mjd119 (Arch Wiki)
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
# Start i3 if we call startx instead of using display manager
# Consistent file dialog (Arch Wiki)
# Make sure this is before the 'exec' command or it won't be sourced. [added by mjd119](from Arch Wiki)
[ -f /etc/xprofile ] && . /etc/xprofile
[ -f ~/.xprofile ] && . ~/.xprofile
# Added by mjd119 to set desktop background on startup for betterlockscreen (betterlockscreen)
# set desktop background with custom effect
#betterlockscreen -w dim
# Alternative (set last used background)
source ~/.fehbg
exec i3
