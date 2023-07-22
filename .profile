#!/bin/sh
PATH=$PATH:~/.local/bin
PATH=$PATH:/usr/local/go/bin
PLAN9=/home/mi/Coding/git/plan9port export PLAN9
PATH=$PATH:$PLAN9/bin export PATH

alias gca='git commit -am '
alias rsync='rsync -rh --progress '
alias ytaudio='yt-dlp -f ba -x --audio-format mp3 '
alias nsxiv='nsxiv -pa'
alias discord='dbus-run-session discord'

[ -f /tmp/startxran ] && startxran="true"
[ -z $DISPLAY ] && [ -z "$startxran" ] && startx && exit
startxran=""
