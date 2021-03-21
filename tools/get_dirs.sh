#!/bin/sh

if [[ $# -eq 5 ]]
then
python3 /app/tools/dirsearch/dirsearch.py -u $1 -w ~/tools/wordlists/content/quick-content-discovery.txt --json-report=$3 -e $4 -t 200 -e $4 -x 500-599,404,301,400,429 --exclude-texts=Attack Detected,Please contact the system administrator,Page Not Found,URL No Longer Exists
else
python3 /app/tools/dirsearch/dirsearch.py -u $1 -w ~/tools/wordlists/content/quick-content-discovery.txt --json-report=$3 -e $4 -t 200 -r -R $6 -e $4 -x 500-599,404,301,400,429 --exclude-texts=Attack Detected,Please contact the system administrator,Page Not Found,URL No Longer Exists
fi
