#!/bin/bash
# DNS Resolution Validation Tool
echo "==========================================="
echo "          DNS RESOLUTION CHECKER           "
echo "==========================================="
read -p "Enter domain name to resolve (e.g., google.com): " DOMAIN
if [ -z "$DOMAIN" ]; then
    echo "Error: No domain entered. Exiting."
    exit 1
fi
echo "Querying DNS server for $DOMAIN..."
nslookup $DOMAIN
if [ $? -eq 0 ]; then
    echo "🟢 SUCCESS: DNS is resolving correctly."
else
    echo "🔴 FAILURE: Name resolution failed. Verify DNS configuration."
fi
echo "==========================================="
