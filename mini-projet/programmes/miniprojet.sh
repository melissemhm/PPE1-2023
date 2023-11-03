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

chemin=$1

fichier_mis_a_jour="urls_mis_a_jour.txt"

lineN=1

while read -r line;
do
    if [ $lineN -eq 3 ];
    then
        nouvelle_url=$(curl -ILs "$line" | grep -i '^Location:' | cut -d ' ' -f 2-)
        echo "$nouvelle_url" >> "$fichier_mis_a_jour"
        encodage=$(echo "$nouvelle_url" | file - | cut -d ' ' -f 2)
        code=$(curl -I -s "$line" | head -n 1 | cut -d ' ' -f 2)
        echo -e "${lineN}\t${nouvelle_url}\t${encodage}\t${code}"
    else
        echo "$line" >> "$fichier_mis_a_jour"
        encodage=$(echo "$line" | file - | cut -d ' ' -f 2)
        code=$(curl -I -s "$line" | head -n 1 | cut -d ' ' -f 2)
        echo -e "${lineN}\t${line}\t${encodage}\t${code}"
    fi
    lineN=$((lineN + 1))
done < "$chemin"

mv "$fichier_mis_a_jour" "$chemin"


