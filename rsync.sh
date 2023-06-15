#!/bin/bash
dos2unix "$0"


if [ "$#" -ne 2 ]; then
    echo "Utilisation : $0 <dossier_a_sauvegarder> <dossier_sauvegarde>"
    exit 1
fi

if ! command -v rsync >/dev/null; then
    echo "Erreur : rsync n'est pas installé. Veuillez installer rsync et réessayer."
    exit 2
fi

dossier_sauvegarde="$HOME/$2"
fichier_journal="$HOME/backup/backup_$(date +%d-%m-%Y).log"

echo "Simulation du processus de sauvegarde..."
rsync -av --dry-run "$1" "$dossier_sauvegarde/current" >"$fichier_journal"

echo "Exécution de la sauvegarde..."
rsync -av "$1" "$dossier_sauvegarde/current" >>"$fichier_journal"

date_sauvegarde=$(date +%d-%m-%Y)
mkdir "$dossier_sauvegarde/$date_sauvegarde"
mv "$dossier_sauvegarde/current/"* "$dossier_sauvegarde/$date_sauvegarde"

echo "Sauvegarde terminée."