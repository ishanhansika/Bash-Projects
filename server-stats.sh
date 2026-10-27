#!/bin/bash
echo " Total CPU usage "
top -bn1 | grep "Cpu(s)"
echo " ================================= "
echo " Total memory usage "
free -m | awk 'NR==2{printf "Total: %sMB | Used: %sMB | Free: %sMB | Usage: %.2f%%\n", $2,$3,$4,$3*100/$2 }'
echo " ================================= "
echo " Total disk usage "
df -h -x tmpfs -x devtmpf
echo " ================================ "
echo " Top 5 processes by CPU usage "
ps -eo pid,user,%cpu,comm --sort=-%cpu | head -n 6
echo " ================================ "
echo " Top 5 processes by memory usage "
ps -eo pid,user,%mem,comm --sort=-%mem | head -n 6





