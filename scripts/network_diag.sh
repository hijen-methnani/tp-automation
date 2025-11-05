#!/bin/bash

# Exercice 7 : Diagnostic réseau

echo "=== DIAGNOSTIC RÉSEAU ==="

# 1. Vérifier la connectivité Internet
echo "1. Test de connectivité Internet..."
if ping -c 2 8.8.8.8 &> /dev/null; then
    echo "   Internet: Connecté"
else
    echo "   Internet: Non connecté"
fi

# 2. Scanner les ports ouverts
echo "2. Ports ouverts sur cette machine..."
netstat -tuln | grep LISTEN | while read line; do
    echo "   - $line"
done

# 3. Afficher les interfaces réseau
echo "3. Interfaces réseau..."
ip addr show | grep -E "^([0-9]+):|inet " | while read line; do
    if [[ $line =~ ^[0-9]+: ]]; then
        echo "   $line"
    else
        echo "     $line"
    fi
done

# 4. Test de latence
echo "4. Test de latence Google..."
ping -c 4 google.com | tail -2

echo "=== DIAGNOSTIC TERMINÉ ==="