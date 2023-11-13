#!/usr/bin/bash

if [ $# -ne 1 ];
then
    echo " Un argument attendu exactement "
    exit
else
	if [ $# $chemin ]
	then
		echo "on a bien un fichier"
	else
		echo "on attend un fichier qui existe"
		exit
	fi
fi

# Début du fichier HTML
echo "<html>"
echo "<head><title>Tableau des URLs</title></head>"
echo "<body>"
echo "<table border=\"1\">"
echo "<tr><th>Numéro</th><th>URLs</th><th>Code</th><th>Encodage</th></tr>"

chemin=$1
lineN=1

# Lecture du fichier ligne par ligne et traitement
while read -r line;
do
    code=$(curl -s -I -L -w "%{http_code}" -o /dev/null $line)
    encodage=$(curl -s -I -L -w "%{content_type}" -o /dev/null $line | grep -P -o "charset=\S+" | cut -d"=" -f2 | tail -n 1)
        # Écriture de la ligne du tableau
    echo "<tr><td>${lineN}</td><td>${line}</td><td>${code}</td><td>${encodage}</td></tr>"
    lineN=$(expr $lineN + 1)

done < "$chemin"

# Fin du fichier HTML
echo "</table>"
echo "</body>"
echo "</html>"
