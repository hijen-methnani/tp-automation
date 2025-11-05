## TP Automation - Bash/Script

**Étudiante:** hijen-methnani  
**Niveau:** Bachelor 2  

##  Structure du projet
tp-automation/
├── scripts/ # Scripts Bash
│ ├── update_system.sh # Exercice 1
│ └── backup_logs.sh # Exercice 2
├── docs/ # Documentation
└── README.md # Ce fichier



## Exercice 1 - update_system.sh

Script de mise à jour système automatisé.

### Utilisation :
```bash
chmod +x scripts/update_system.sh
./scripts/update_system.sh
Fonctionnalités :
Mise à jour des paquets

Nettoyage automatique

Gestion d'erreurs
## Exercice 2 - backup_logs.sh

Script de sauvegarde des logs système.

### Utilisation :
```bash
chmod +x scripts/backup_logs.sh
./scripts/backup_logs.sh
Fonctionnalités :
Archivage des logs /var/log/

Compression .tar.gz

Nettoyage automatique (7 jours)

Vérification espace disque

Rapport détaillé