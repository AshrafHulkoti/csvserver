#!/bin/bash

if [[ "${#}" -eq 1 ]]; then
	NUMBER_OF_ENTRIES="${1}"
else
	NUMBER_OF_ENTRIES=10
fi

if [[ -f "inputFile" ]]; then
	echo "Deleting the existing file"
	rm inputFile
fi

echo "Generating ${NUMBER_OF_ENTRIES} entries"
for ((i=0; i<"${NUMBER_OF_ENTRIES}"; i++))
do
	echo "${i}, ${RANDOM}" >> inputFile
done
