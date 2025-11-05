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


Quand l'utiliser ?

1. Administration quotidienne
bash
./scripts/admin_auto.sh
# → Choisir l'option 4 "Tout exécuter"

2. Surveillance système
bash
# Mise à jour seule
./scripts/update_system.sh

# Diagnostic réseau rapide
./scripts/network_diag.sh

3. Sauvegarde d'urgence
bash
./scripts/backup_logs.sh


Erreurs Courantes et Solutions:

    Erreur: "Permission denied"
        Solution:
        bash
        chmod +x scripts/*.sh
   
        
comment Ajouter de nouveaux scripts?

1-Créer le script dans scripts/
2-Le rendre exécutable : chmod +x nouveau_script.sh
3-L'ajouter dans admin_auto.sh




