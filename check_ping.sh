#!/bin/bash
# Network reachability automation script
echo "==========================================="
echo "   NETWORK CONNECTIVITY CHECKER (PING)     "
echo "==========================================="
read -p "Enter IP Address or Domain to ping: " TARGET
if [ -z "$TARGET" ]; then
    echo "Error: No target entered. Exiting."
    exit 1
fi
echo "Pinging $TARGET 3 times... please wait..."
ping -c 3 $TARGET
if [ $? -eq 0 ]; then
    echo "🟢 SUCCESS: $TARGET is reachable!"
else
    echo "🔴 FAILURE: $TARGET is unreachable."
fi
