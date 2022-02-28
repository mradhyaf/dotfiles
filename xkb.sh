#!/bin/bash

# set keyboard layout to colemak
/bin/setxkbmap us -variant colemak

# clear toggling effect on caps lock
/bin/xmodmap -e 'clear Lock'
