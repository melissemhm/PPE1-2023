#!/usr/bin/bash

annee=$1
entite=$2

cat ./$annee/*/* | grep -c "$entite"




