#!/bin/sh

# ▒██   ██▒ ██▓ ███▄    █  ██▓▄▄▄█████▓ 
# ▒▒ █ █ ▒░▓██▒ ██ ▀█   █ ▓██▒▓  ██▒ ▓▒ 
# ░░  █   ░▒██▒▓██  ▀█ ██▒▒██▒▒ ▓██░ ▒░ 
#  ░ █ █ ▒ ░██░▓██▒  ▐▌██▒░██░░ ▓██▓ ░  
# ▒██▒ ▒██▒░██░▒██░   ▓██░░██░  ▒██▒ ░  
# ▒▒ ░ ░▓ ░░▓  ░ ▒░   ▒ ▒ ░▓    ▒ ░░    
# ░░   ░▒ ░ ▒ ░░ ░░   ░ ▒░ ▒ ░    ░     
#  ░    ░   ▒ ░   ░   ░ ░  ▒ ░  ░       
#  ░    ░   ░           ░  ░            

if [  -n "$(uname -a | grep void)" ]
then
  xrdb -merge ~/.Xresources
fi

xsetroot -bg "#1A1A1A" -fg "#212121" -mod 12 2
xsetroot -cursor_name left_ptr

sxhkd &
exec dbus-run-session -- bspwm