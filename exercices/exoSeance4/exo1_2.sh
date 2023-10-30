#!/usr/bin/bash

annee1=$1
annee2=$2
annee3=$3
entite=$4

# Exécutez le script précédent pour chaque année
./exo1.sh "$annee1" "$entite"
./exo1.sh "$annee2" "$entite"
./exo1.sh "$annee3" "$entite"

