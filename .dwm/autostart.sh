#!/bin/sh
picom --focus-exclude "x = 0 && y = 0 && override_redirect = true" &
nitrogen --restore &
exec $(ssh-agent -s) &
