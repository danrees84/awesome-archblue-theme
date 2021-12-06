#!/usr/bin/env bash

# Script to autorun applications on start of Awesome
# Function run tests if application is already running before executing
# This is included in rc.lua

function run {
  if ! pgrep -f $1 ;
  then
    $@&
  fi
}

# Picom window compositor
run picom -b &

# Network Manager applet for WIFI
run nm-applet &

# Bluetooth applet
run blueman-applet &

# Light-locker screen lock
light-locker &
