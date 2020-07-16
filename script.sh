#!/bin/bash
declare -a filenames
count=0
while IFS= read -r line || [ "$line" ]; do
filenames+=($line)
(( count++ ))
done < filename.txt

counter=0
for file in change/*
do
	cp "$file" "done/"${filenames[$counter]};
	(( counter++ ))
done