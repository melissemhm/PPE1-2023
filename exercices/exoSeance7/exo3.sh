#!/bin/bash

# Vérifier si le nombre d'arguments est correct
if [ "$#" -ne 2 ]; then
    echo "Il vous faut deux arguments"
    exit
fi

# Appeler le script de l'exercice 1 pour obtenir un mot par ligne
mots_par_ligne=$(./exo1.sh "$1")

# Utiliser paste pour obtenir les bigrammes de mots
bigrammes=$(echo "$mots_par_ligne" | paste -d ' ' - -)

# Compter la fréquence de chaque bigramme
freq_bigrammes=$(echo "$bigrammes" | sort | uniq -c | sort -n -r)

# Afficher les bigrammes les plus fréquents
echo "$freq_bigrammes" | head -n "$2"
