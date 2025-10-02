#!/bin/bash

# 1. Créer dossier principal et sous-dossier : 
mkdir -p "mon_projet" "mon_projet/documents" "mon_projet/logs" "mon_projet/sauvegardes"

# 2. Générer un fichier log avec les nombres de 1 à 50
for i in {1..50};do
	echo $i >> "mon_projet/logs/logdata.txt"
done

# 3. Créer deux fichiers texte avec contenu spécifique
echo "Contenu du fichier A" > "mon_projet/documents/fichierA.txt"
echo "Contenu du fichier B" > "mon_projet/documents/fichierB.txt"

# 4. Générer un rapport daté
date_actuelle=$(date +"%Y-%m-%d")
rapport="mon_projet/rapport_$date_actuelle.txt"

echo "Rapport généré le : $date_actuelle" > "$rapport"
echo "Nombre de fichiers dans documents : $(ls -1 mon_projet/documents | wc -l)" >> "$rapport"
echo "Nombre de fichiers dans logs : $(ls -1 mon_projet/logs | wc -l)" >> "$rapport"
