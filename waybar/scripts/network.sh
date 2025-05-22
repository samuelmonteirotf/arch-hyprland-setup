#!/bin/bash
ip=$(ip -4 addr show wlp5s0 | grep -oP '(?<=inet\s)\d+(\.\d+){3}' | head -n1)

if [ -n "$ip" ]; then
  echo "{\"text\": \"󰤨 $ip\", \"tooltip\": \"Interface: wlp5s0\nIP: $ip\"}"
else
  echo '{"text": "󰤮 Disconnected", "tooltip": "No IP"}'
fi
