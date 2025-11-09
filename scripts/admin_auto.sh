#!/bin/bash
echo " ADMINISTRE "
echo "1. Mise à jour système"
echo "2. Sauvegarde des logs"
echo "3. Diagnostic réseau"
read -p "Choix : " choice

case $choice in
    1) ./update_system.sh ;;
    2) ./backup_logs.sh ;;
    3) ./network_diag.sh ;;
    *) echo "Choix invalide" ;;
esac
