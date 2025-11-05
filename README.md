
# TP Automation - Administration Système

**Étudiante:** Hijen Methnani  


##  Utilisation

```bash
git clone https://github.com/hijen-methnani/tp-automation.git
cd tp-automation
chmod +x scripts/*.sh

# Lancer le menu principal
./scripts/admin_auto.sh

# Ou utiliser un script directement
./scripts/update_system.sh
./scripts/backup_logs.sh
./scripts/network_diag.sh

 Scripts
     update_system.sh
Met à jour les paquets système
Nettoie les paquets inutiles
Gère les erreurs

     backup_logs.sh
Sauvegarde les logs /var/log/
Compresse en .tar.gz daté
Nettoie les vieilles archives

     network_diag.sh
Teste la connectivité Internet
Liste les ports ouverts
Affiche les interfaces réseau

    admin_auto.sh
Menu interactif pour tous les scripts

 

     Documentation
Voir le dossier docs/ pour :
    Guide d'utilisation complète

Rapport technique personnel
