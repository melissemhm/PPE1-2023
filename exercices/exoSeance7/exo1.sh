#!/bin/bash

# Vérifier si un chemin de fichier a été fourni en argument
if [ "$#" -ne 1 ];
then
    echo "il faut un argument"
    exit
fi

# Récupérer le chemin vers le fichier à traiter
fichier="$1"

# Vérifier si le fichier existe
if [ ! -f "$fichier" ];
then
    echo "Le fichier $fichier n'existe pas."
    exit
fi

# Obtenir un mot par ligne en utilisant grep
mots_par_ligne=$(grep -o -E '\w+' "$fichier")

# Nettoyer les mots (supprimer la ponctuation et convertir en minuscules)
mots_nettoye=$(echo "$mots_par_ligne" | tr -s '[:punct:]' ' ' | tr '[:upper:]' '[:lower:]')

# Afficher le résultat sur la sortie standard
echo "$mots_nettoye"
