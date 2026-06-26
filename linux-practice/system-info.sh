#!/bin/bash

echo "===== SYSTEM REPORT ====="
echo

echo "Hostname:"
hostname

echo
echo "Current User:"
whoami

echo
echo "Memory Usage:"
free -h

echo
echo "Disk Usage:"
df -h

echo
echo "Top 5 Processes:"
ps aux --sort=-%mem | head -5

