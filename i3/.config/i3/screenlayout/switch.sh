#!/bin/bash

if xrandr -q | grep "HDMI-1 connected"; then
  /bin/bash ~/.config/i3/screenlayout/home_dual.sh
else
  /bin/bash ~/.config/i3/screenlayout/default.sh
fi
