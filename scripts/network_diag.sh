#!/bin/bash
echo "=== DIAGNOSTIC RÉSEAU ==="
echo "1. Test Internet..."
ping -c 2 8.8.8.8 &> /dev/null && echo " Internet OK" || echo " No Internet "
echo "2. Ports ouverts :"
netstat -tuln | grep LISTEN
