#!/bin/bash

# clean_logs.sh - Deletes logs older than 7 days

echo "🧹 Starting log cleanup..."

echo "Before cleanup:"
df -h /var

# Delete old logs (dry run first)
sudo find /var/log -type f -mtime +7 -exec ls -lh {} \;

echo "Proceeding to delete..."
sudo find /var/log -type f -mtime +7 -exec rm -f {} \;

echo "After cleanup:"
df -h /var

echo "✅ Log cleanup complete."
