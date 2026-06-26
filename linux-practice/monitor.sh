#!/bin/bash

echo "===== $(date) =====" >> /tmp/server-health.log

echo "Memory:" >> /tmp/server-health.log
free -h >> /tmp/server-health.log

echo "Top Processes:" >> /tmp/server-health.log
ps aux --sort=-%mem | head -5 >> /tmp/server-health.log

echo "-------------------" >> /tmp/server-health.log
