#!/bin/bash
# Script add by mjd119 to prevent multiple instances of udiskie and multiple system tray items
# Based on polybar launch script from Arch Wiki
# Terminate already running udiskie instances
killall -q udiskie 
# Start udiskie (with system tray icon)
udiskie --tray --automount &
echo "Udiskie launched..."
