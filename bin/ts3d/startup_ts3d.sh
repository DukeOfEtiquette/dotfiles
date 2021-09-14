#!/bin/sh

dir=$(pwd)
monitor_a="DP-1-2-1"
monitor_b="DP-1-2-3"

# setup display
xrandr --output eDP-1 --primary --mode 1920x1080 --pos 1920x0 --rotate normal --output eDP-1-2 --off --output HDMI-1-1 --off --output DP-1-1 --off --output DP-1-2 --off --output DP-1-2-1 --mode 1920x1080 --pos 0x0 --rotate normal --output DP-1-2-2 --off --output DP-1-2-3 --mode 1920x1080 --pos 3840x0 --rotate normal &
wait "$!"
sleep 5

nitrogen --restore
wait "$!"

xfce4-terminal &
