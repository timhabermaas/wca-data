#! /bin/bash
echo "Importing WCA export"
filename="$(curl --silent https://www.worldcubeassociation.org/results/misc/export.html | grep -E 'WCA_export[0-9_]+\.tsv.zip' -o | head -n1 | tr -d '\n')"
echo "Downloading export files"
curl http://www.worldcubeassociation.org/results/misc/${filename} > download.zip
unzip -o download.zip -d .
