
#!/bin/bash

LOG_SOURCE="/var/log/"
BACKUP_DIR="/var/backups/logs"     # pourù stocker les archives
BACKUP_FILE="logs_$(date +%Y%m%d).tar.gz"
BACKUP_PATH="$BACKUP_DIR/$BACKUP_FILE"



echo "1. Verification espace disque"
df -h /

echo "2. Creation dossier backup"
mkdir -p "$BACKUP_DIR"

echo "3. Archivage des logs"

echo "4. Liste des fichiers sauvegardes :"
for file in "$LOG_SOURCE"*; do
    if [ -f "$file" ]; then
        echo "   - $(basename "$file")"
    fi
done

echo "5. Nettoyage archives de plus de 7 jours"
find "$BACKUP_DIR" -name "logs_*.tar.gz" -mtime +7 -delete

echo ""
echo "RAPPORT "
echo "Archive : $BACKUP_FILE"
echo "Taille : $(du -h "$BACKUP_PATH" 2>/dev/null | cut -f1 || echo "Non disponible")"
echo "Emplacement : $BACKUP_DIR"
echo "Date : $(date)"
