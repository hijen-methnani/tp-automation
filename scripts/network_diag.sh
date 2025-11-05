#!/bin/bash

source ../config/config.cfg

echo "=== DIAGNOSTIC RÉSEAU ==="

echo "1. Test Internet ($TEST_HOST)..."
ping -c 2 $TEST_HOST &> /dev/null && echo "✓ Internet OK" || echo "✗ No Internet"

echo "2. Ports ouverts :"
netstat -tuln | grep LISTEN

echo "3. Interfaces réseau :"
ip addr show | grep -E "eth|wlan|lo" | head -10
