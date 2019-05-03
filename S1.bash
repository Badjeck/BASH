#!/bin/bash

chiffre=0
tentative=0
aleatoire=$(($RANDOM %1001))

while [$chiffre -ne $aleatoire] ; do
    echo -n "Devine le chiffre" ; 
    read chiffre
    if [ "$chiffre" -lt $aleatoire] ; then
        echo "plus grand"
    elif ["$chiffre" -gt $aleatoire ] ; then
        echo "plus petit"
    fi
    tentative = $(( $tentative +1 ))
done

echo "BA BRAVO NILS C'EST SUPER TA TROUVER LE CHIFFRE"

exit 0