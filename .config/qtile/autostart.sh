#!/bin/sh
picom &
nitrogen --restore &
eval $(ssh-agent -s)
xrdb ~/.Xresources
