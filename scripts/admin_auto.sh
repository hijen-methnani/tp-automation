echo "ADMIN"
echo "1. Mise à jour système"
echo "2. Sauvegarde des logs" 
echo "3. Diagnostic réseau"
read -p "Choix : " choice

case $choice in
  1) ./scripts/update_system.sh ;;
  2) ./scripts/backup_logs.sh ;;
  3) ./scripts/network_diag.sh ;;
  *) echo "Choix invalide" ;;
esac
