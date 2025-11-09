#!/bin/bash

#exercice1
# Variables pour les commandes
UPDATE_CMD="apt update"
UPGRADE_CMD="apt upgrade -y"
CLEAN_CMD="apt autoremove -y"


echo "1. Mise à jour liste des paquets"
if sudo $UPDATE_CMD; then
    echo " Succès"
else
    echo " Échec"
    exit 1
fi

echo "2. Mise à jour des paquets"
if sudo $UPGRADE_CMD; then
    echo " Succès"
else
    echo " Échec"
    exit 1
fi

echo "3. Nettoyage des paquets"
if sudo $CLEAN_CMD; then
    echo " Succès"
else
    echo " Problème"
fi

echo "=== MIS À JOUR TERMINÉE ==="
# 4. Affiche un résumé
echo " RÉSUMÉ "
echo "Mise à jour terminée : $(date)"
echo "Statut : Succès"

# 5. Bonus email 
echo "Résumé" | mail -s "Rapport" hijenmethnani1@gmail.com
