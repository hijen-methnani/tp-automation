#!/bin/bash

source ../config/config.cfg

echo "1. Test Internet ($TEST_HOST)"
ping -c 2 $TEST_HOST &> /dev/null && echo " Internet " || echo "No Internet"

echo "2. Ports ouverts :"
netstat -tuln | grep LISTEN

echo "3. Interfaces réseau :"
