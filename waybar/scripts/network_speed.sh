#!/bin/bash

interface="wlp5s0"

if [ ! -d /sys/class/net/$interface ]; then
  echo '{"text": "󰤭"}'
  exit
fi

rx1=$(cat /sys/class/net/$interface/statistics/rx_bytes)
tx1=$(cat /sys/class/net/$interface/statistics/tx_bytes)
sleep 1
rx2=$(cat /sys/class/net/$interface/statistics/rx_bytes)
tx2=$(cat /sys/class/net/$interface/statistics/tx_bytes)

rx_rate=$(( (rx2 - rx1) / 1024 ))
tx_rate=$(( (tx2 - tx1) / 1024 ))

echo "{\"text\": \"󰤨  ${rx_rate}KB/s  ${tx_rate}KB/s\"}"

