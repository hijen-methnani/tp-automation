#!/bin/bash

# Exercice 2 : Script de sauvegarde de logs

source ../config/config.cfg

echo "=== SAUVEGARDE DES LOGS SYSTÈME ==="

echo "Sauvegarde dans : $BACKUP_DIR"
echo "Garder les archives : $RETENTION_DAYS jours"

# Variables (simplifiées)
LOG_SOURCE="/var/log/"
DATE=$(date +%Y%m%d)
BACKUP_FILE="logs_$DATE.tar.gz"
BACKUP_PATH="$BACKUP_DIR/$BACKUP_FILE"

echo "1. Verification espace disque"
df -h /

echo "2. Creation dossier backup"
mkdir -p "$BACKUP_DIR"

echo "3. Archivage des logs"
tar -czf "$BACKUP_PATH" "$LOG_SOURCE" 2>/dev/null

echo "4. Liste des fichiers sauvegardes :"
for file in "$LOG_SOURCE"*; do
    if [ -f "$file" ]; then
        echo "   - $(basename "$file")"
    fi
done

echo "5. Nettoyage archives de plus de $RETENTION_DAYS jours"
find "$BACKUP_DIR" -name "logs_*.tar.gz" -mtime +$RETENTION_DAYS -delete

echo ""
echo "=== RAPPORT ==="
echo "Archive : $BACKUP_FILE"
echo "Taille : $(du -h "$BACKUP_PATH" 2>/dev/null | cut -f1 || echo "Non disponible")"
echo "Emplacement : $BACKUP_DIR"
echo "Date : $(date)"
