# TP Automation - Administration Système avec Bash

**Étudiante:** Hijen Methnani  

## Description de mon projet

Projet d'automatisation complète de tâches système développé en Bash. Ce projet regroupe plusieurs scripts d'administration pour la maintenance, la sauvegarde et la surveillance d'un système Linux.

##  Structure du Projet
tp-automation/
    scripts/
        admin_auto.sh # Script principal
        update_system.sh # Exercice 1 - Mise à jour système
        backup_logs.sh # Exercice 2 - Sauvegarde des logs
        network_diag.sh # Exercice 7 - Diagnostic réseau
    config/
         config.cfg # Fichier de configuration
    docs/ # Documentation 
        Guide complet
        un rapport personnel
    backups/ # Archives de sauvegarde (généré automatiquement)
    README.md # Ce fichier



#exercice1 update_system.sh

 update_system.sh - Mise à Jour Système
    -Met à jour la liste des paquets
    -Installe les mises à jour disponibles
    -Nettoie les paquets inutiles
    -Génère un rapport détaillé


#exercice2
  backup_logs.sh - Sauvegarde des Logs
    -Archive les logs système dans /var/log/
    -Compresse en format .tar.gz daté
    -Supprime les archives de plus de 7 jours
    -Vérifie l'espace disque disponible


 network_diag.sh - Diagnostic Réseau
    -Teste la connectivité Internet
    -Liste les ports ouverts
    -Affiche les interfaces réseau

  Configuration
Le fichier config/config.cfg permet de personnaliser :
    -Chemins des sauvegardes
    -Paramètres réseau



Exercice 1 & 3
- Mise à jour système complète
-Gestion des erreurs
-Journalisation des actions
-Variables pour les commandes

Exercice 2
-Archivage des logs avec date
-Compression .tar.gz
-Nettoyage automatique (7 jours)
-Vérification espace disque
-Boucle for pour lister les fichiers

Exercice 7 - Projet Administre
-Script principal unifié (admin_auto.sh)
-Diagnostic réseau complet (network_diag.sh)
-Fichier de configuration (config.cfg)
-Guide d'administration complet

     Technologies Utilisées
Bash - Langage de script
Git - Versionning du code
GitHub - Hébergement du projet

Linux Debian - Environnement de test

    Auteur
hijen-methnani
Étudiant en Bachelor 2 - Automatisation système