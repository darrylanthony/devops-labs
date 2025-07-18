#!/bin/bash

# update.sh - Basic system update automation script

echo "Starting system update..."
sudo apt update && sudo apt upgrade -y
echo "System updated successfully!"
