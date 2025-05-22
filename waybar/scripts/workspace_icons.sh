#!/bin/bash

active=$(hyprctl activeworkspace -j | jq -r '.name')

case $active in
  "1") echo "" ;;      # navegador
  "2") echo "" ;;      # música
  "3") echo "" ;;      # terminal
  "4") echo "" ;;      # código
  "5") echo "" ;;      # terminal alternativo
  *) echo "" ;;        # genérico
esac

