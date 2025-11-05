#!/bin/bash

source ../config/config.cfg

echo "1. Test Internet ($TEST_HOST)"

echo "2. Ports ouverts :"
netstat -tuln | grep LISTEN

echo "3. Interfaces réseau :"
