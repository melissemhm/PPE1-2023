#!/usr/bin/bash

annee="$1"
mois="$2"
nombre_de_lieux="$3"

# Filtrer les fichiers par année et mois
fichiers="./$annee/$mois/*"

if [ $# -eq 3 ]
then
    cat $fichiers | grep Location | cut -f 3 | sort | uniq -c | sort -nr | head -$nombre_de_lieux
else
    echo "nombre d'arguments est incorrect"
fi



