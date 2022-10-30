#!/bin/bash

picom -b --vsync &

/usr/lib/policykit-1-gnome/polkit-gnome-authentication-agent-1 &

./statusbar.sh &
