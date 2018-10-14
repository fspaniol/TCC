#!/bin/bash

#echo "| TEST NAME | NODE COUNT | LINK COUNT | FLOW COUNT | INTO TIME RAN | INTO SOLUTION | VRP TIME RAN | VRP SOLUTION | LOWER BOUND | GAP (%)| PROPORTION | ITERATIONS |"
#echo "|---|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|"

for file in ./networks/*/; do
	name=$(basename $file)

	go run scripts/into/parser_into.go $name >networks/$name/lower2/groups.txt
	#source ./format_table.sh $name
done
