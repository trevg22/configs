#!/usr/bin/env bash

# List devices and let user pick one
device_info=$(bluetoothctl devices | fzf --prompt="Select device: ")

# Exit if no selection
[ -z "$device_info" ] && echo "No device selected." && exit 1

# Extract MAC address
mac=$(echo "$device_info" | awk '{print $2}')

# Connect
echo "Connecting to $device_info..."
bluetoothctl connect "$mac"
