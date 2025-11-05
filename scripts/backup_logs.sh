#!/bin/bash

# Exercice 2 : Script de sauvegarde de logs

# Variables
BACKUP_DIR="$HOME/tp-automation/backups"
LOG_SOURCE="/var/log/"
DATE=$(date +%Y%m%d)
BACKUP_FILE="logs_$DATE.tar.gz"
BACKUP_PATH="$BACKUP_DIR/$BACKUP_FILE"

echo "=== SAUVEGARDE DES LOGS SYSTÈME ==="

# 1. Vérifier l'espace disque
echo "1. Verification espace disque..."
df -h /

# 2. Créer le dossier de backup
echo "2. Creation dossier backup..."
mkdir -p "$BACKUP_DIR"

# 3. Archiver les logs
echo "3. Archivage des logs..."
tar -czf "$BACKUP_PATH" "$LOG_SOURCE" 2>/dev/null

# 4. Lister les fichiers avec boucle for
echo "4. Liste des fichiers sauvegardes :"
for file in "$LOG_SOURCE"*; do
    if [ -f "$file" ]; then
        echo "   - $(basename "$file")"
    fi
done

# 5. Supprimer archives de plus de 7 jours
echo "5. Nettoyage archives > 7 jours..."
find "$BACKUP_DIR" -name "logs_*.tar.gz" -mtime +7 -delete

# 6. Afficher le rapport
echo ""
echo "=== RAPPORT ==="
echo "Archive : $BACKUP_FILE"
echo "Taille : $(du -h "$BACKUP_PATH" 2>/dev/null | cut -f1 || echo "Non disponible")"
echo "Emplacement : $BACKUP_DIR"
echo "Date : $(date)"

# Bonus : Taux de compression
echo "Compression : gzip"
