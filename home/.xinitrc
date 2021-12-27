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

hsetroot -cover Desktop/japan.jpg
xsetroot -cursor_name left_ptr

xss-lock xsecurelock &

sxhkd &
start-pulseaudio-x11
exec dbus-run-session -- bspwm
