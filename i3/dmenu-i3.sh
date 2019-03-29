#!/bin/bash

res=$(rofi -dmenu < ~/.config/i3/.dmenu-pstyczewski)

if [ $rs = "lock" ]; then
    # i3exit lock
    /home/pstyczewski/.config/i3/lock.sh
fi
if [ $res = "suspend" ]; then
    i3exit suspend
fi
if [ $res = "logout" ]; then
  i3exit logout
fi
if [ $res = "reboot" ]; then
  i3exit reboot
fi
if [ $res  = "shutdown" ]; then
  i3exit shutdown 
fi
if [ $res = "watchtower" ]; then
  playonlinux --run "WTLibrary"
fi
if [ $res = "pdfxchangeviewer" ]; then
  wine "/home/pstyczewski/bin/pdfxchangeviewer/PDFXCview.exe"
fi
exit 0
