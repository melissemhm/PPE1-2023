#!/bin/bash

# Vérifier si le nombre d'arguments est correct
if [ "$#" -ne 2 ];
then
    echo "il faut deux arguments"
    exit
fi

# Appeler le script de l'exercice 1 pour obtenir un mot par ligne
mots_par_ligne=$(./exo1.sh "$1")

# Compter la fréquence de chaque mot
freq_mots=$(echo "$mots_par_ligne" | sort | uniq -c | sort -n -r)

# Afficher les mots les plus fréquents
echo "$freq_mots" | head -n "$2"
