# Guide d'Administration - Projet Administre

##  Description
Projet d'automatisation système complet avec scripts Bash pour l'administration d'un serveur Linux.


## Installation et Configuration

### Prérequis
- Système Linux (Debian pour moi )
- Accès sudo
- Connexion Internet

### Installation rapide

```bash
# 1. Télécharger le projet
git clone https://github.com/hijen-methnani/tp-automation.git
cd tp-automation

# 2. Rendre les scripts exécutables
chmod +x scripts/*.sh

# 3. Vérifier la structure
tree .
Structure des dossiers
text
tp-automation/
 scripts/           # Scripts principaux
    admin_auto.sh      # Interface principale
    update_system.sh   # Mise à jour système
    backup_logs.sh     # Sauvegarde logs
    network_diag.sh    # Diagnostic réseau
config/            # Fichiers de configuration
    config.cfg         # Paramètres
backups/           # Sauvegardes générées
logs/              # Logs d'exécution
docs/              # Documentation


Quand l'utiliser ?

1. Administration quotidienne
    but: Maintenance régulière du serveur

bash
./scripts/admin_auto.sh
# → Choisir l'option 4 "Tout exécuter"

2. Surveillance système
    but: Vérifier l'état du système

bash
# Mise à jour seule
./scripts/update_system.sh

# Diagnostic réseau rapide
./scripts/network_diag.sh

3. Sauvegarde d'urgence
    but: Avant une mise à jour critique

bash
./scripts/backup_logs.sh

4. Planification automatique
    but: Exécution programmée via cron

bash
# Ajouter dans crontab -e
0 2 * * * /home/hijen/tp-automation/scripts/backup_logs.sh
0 3 * * 1 /home/hijen/tp-automation/scripts/update_system.sh

Erreurs Courantes et Solutions:

    Erreur: "Permission denied"
        Solution:
        bash
        chmod +x scripts/*.sh
    Erreur: "Command not found"
        Solution:
        bash
        # Vérifier l'installation des paquets
        sudo apt update
        sudo apt install net-tools tar gzip
    Erreur: "No space left on device"
        Solution:
        bash
        # Nettoyer l'espace disque
        ./scripts/backup_logs.sh  # Supprime les vieilles archives
        sudo apt autoremove
        
comment Ajouter de nouveaux scripts?

1-Créer le script dans scripts/
2-Le rendre exécutable : chmod +x nouveau_script.sh
3-L'ajouter dans admin_auto.sh


 
En cas de problème, consulter :

Ce guide d'administration
Les logs dans logs/
La documentation dans docs/

