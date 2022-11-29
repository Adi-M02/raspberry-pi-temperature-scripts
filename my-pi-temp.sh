#!/bin/bash
# Script: my-pi-temp.sh
# Purpose: Display the CPU and GPU temperatures of a Raspberry Pi 4
cpu=$(</sys/class/thermal/thermal_zone0/temp)
echo "$(date) @ $(hostname)"
echo "CPU => temp=$((cpu/1000))'C"
echo "GPU => $(vcgencmd measure_temp)"
