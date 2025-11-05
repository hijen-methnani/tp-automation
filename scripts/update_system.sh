#!/bin/bash

# Exercice 1 : Script de mise à jour système

# Variables pour les commandes
UPDATE_CMD="apt update"
UPGRADE_CMD="apt upgrade -y"
CLEAN_CMD="apt autoremove -y"

echo "=== MISE À JOUR DU SYSTÈME ==="

# 1. Met à jour la liste des paquets
echo "1. Mise à jour liste des paquets..."
if sudo $UPDATE_CMD; then
    echo "✓ Succès"
else
    echo "✗ Échec"
    exit 1
fi

# 2. Met à jour tous les paquets
echo "2. Mise à jour des paquets..."
if sudo $UPGRADE_CMD; then
    echo "✓ Succès"
else
    echo "✗ Échec"
    exit 1
fi

# 3. Nettoie les paquets inutiles
echo "3. Nettoyage..."
if sudo $CLEAN_CMD; then
    echo "Succès"
else
    echo "Problème"
fi

# 4. Affiche un résumé
echo ""
echo "=== RÉSUMÉ ==="
echo "Mise à jour terminée : $(date)"
echo "Statut : Succès"

# 5. Bonus email 
echo "Résumé" | mail -s "Rapport" hijenmethnani1@gmail.com