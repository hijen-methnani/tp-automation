#!/bin/bash

# Exercice 7 : Script principal Administre

echo "    ADMINISTRE - AUTOMATISATION"

# Chemin des scripts
SCRIPTS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Choisissez une action :"
echo "1 - Mise à jour système"
echo "2 - Sauvegarde des logs" 
echo "3 - Diagnostic réseau"
echo "4 - Tout exécuter"
echo "q - Quitter"

read -p "Votre choix (1-4 ou q) : " choice

case $choice in
    1)
        echo "=== MISE À JOUR SYSTÈME ==="
        "$SCRIPTS_DIR/update_system.sh"
        ;;
    2)
        echo "=== SAUVEGARDE LOGS ==="
        "$SCRIPTS_DIR/backup_logs.sh"
        ;;
    3)
        echo "=== DIAGNOSTIC RÉSEAU ==="
        "$SCRIPTS_DIR/network_diag.sh"
        ;;
    4)
        echo "=== EXÉCUTION COMPLÈTE ==="
        "$SCRIPTS_DIR/update_system.sh"
        echo "---------------------------"
        "$SCRIPTS_DIR/backup_logs.sh"
        echo "---------------------------"
        "$SCRIPTS_DIR/network_diag.sh"
        ;;
    q|Q)
        echo "Au revoir !"
        exit 0
        ;;
    *)
        echo "Choix invalide"
        exit 1
        ;;
esac

echo "        OPÉRATION TERMINÉE"
echo "==================================="
