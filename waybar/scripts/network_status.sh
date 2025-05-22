#!/bin/bash

interface="wlan0"

if ! ip link show "$interface" | grep -q "state UP"; then
    echo "󰤭 Offline"
    exit
fi

rx1=$(cat /sys/class/net/$interface/statistics/rx_bytes)
tx1=$(cat /sys/class/net/$interface/statistics/tx_bytes)
sleep 1
rx2=$(cat /sys/class/net/$interface/statistics/rx_bytes)
tx2=$(cat /sys/class/net/$interface/statistics/tx_bytes)

rx_rate=$(( (rx2 - rx1) / 1024 ))
tx_rate=$(( (tx2 - tx1) / 1024 ))

ssid=$(iw dev "$interface" link | grep SSID | cut -d' ' -f2-)

echo "󰤨 $ssid ↓ ${rx_rate}KB/s ↑ ${tx_rate}KB/s"

