#!/bin/bash
grim /tmp/lockscreen.png && swaylock -f \
  --image /tmp/lockscreen.png \
  --effect-blur 7x5 \
  --clock \
  --indicator \
  --indicator-radius 100 \
  --indicator-thickness 7 \
  --ring-color bbccdd \
  --key-hl-color 88c0d0 \
  --line-color 00000000 \
  --inside-color 00000088 \
  --separator-color 00000000
#remove-tmp
rm /tmp/lockscreen.png

