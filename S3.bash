#!/bin/sh

echo "rentrez l'URL"
read url
youtube-dl $url

exit 0

