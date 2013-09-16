#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc
# MPD daemon start (if no other user instance exists)
[ ! -s ~/.mpd/pid ] && mpd
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx && exit
