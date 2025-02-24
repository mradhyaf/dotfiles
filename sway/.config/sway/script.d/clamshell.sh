#!/bin/sh
# When reloading sway while using clamshell mode, the displays may reset 
# (i.e. both displays will be enabled). This shell script is to stop that.

# Ensure output and path is correct for your system
LAPTOP_OUTPUT="eDP-1"
LID_STATE_FILE="/proc/acpi/button/lid/LID/state"

read -r LS < "$LID_STATE_FILE"

case "$LS" in
    *open)      swaymsg output "$LAPTOP_OUTPUT" enable ;;
    *closed)    swaymsg output "$LAPTOP_OUTPUT" disable ;;
    *)          echo "sway Could not get lid state" >&2 ; exit 1 ;;
esac
