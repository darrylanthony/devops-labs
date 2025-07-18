#!/bin/bash

# disk_alert.sh - Alerts if disk usage exceeds threshold

THRESHOLD=80

# Get disk usage on root ("/") partition, remove % symbol
USAGE=$(df -h / | awk 'NR==2 {print $5}' | sed 's/%//')

echo "📊 Current disk usage: $USAGE%"

# Compare usage to threshold
if [ "$USAGE" -gt "$THRESHOLD" ]; then
    echo "🚨 ALERT: Disk usage on / is above ${THRESHOLD}%!"
else
    echo "✅ Disk usage is within acceptable limits."
fi

