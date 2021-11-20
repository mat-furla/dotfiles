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

if test -z "$DBUS_SESSION_BUS_ADDRESS"; then
  eval `dbus-launch --sh-syntax --exit-with-session`
fi

#xrdb -merge $HOME/.Xresources

hsetroot -cover Desktop/1268174.jpg
xsetroot -cursor_name left_ptr

xss-lock xsecurelock &

sxhkd &
start-pulseaudio-x11
exec dbus-run-session -- bspwm
