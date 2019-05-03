#!/bin/bash


video() {
    echo "rentrez l'URL"
    read url
    youtube-dl -f137 $url
}

musique() {
    echo "rentrez l'URL"
    read url
    youtube-dl -f140 $url
}

#choix video ou musique puis choix qualité
echo "veux tu la vidéo [y/n]"
read choix
if [[ "$choix" -eq "y" ]]; then
    video
    exit 1
else
    musique
    exit 1
fi

exit 0

