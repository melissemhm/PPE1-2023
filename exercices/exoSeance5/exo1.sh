#!/bin/bash


annee=$1
entite=$2

if [ $# -eq 2 ]
then
     cat ./$annee/*/* | grep -c "$entite"
else
    echo "Nombre d'arguments incorrect."
fi




