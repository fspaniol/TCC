#!/bin/bash

#echo "| TEST NAME | NODE COUNT | LINK COUNT | FLOW COUNT | INTO TIME RAN | INTO SOLUTION | VRP TIME RAN | VRP SOLUTION | LOWER BOUND | GAP (%)| PROPORTION | ITERATIONS |"
#echo "|---|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|"

for file in ./networks/zoo_??_*/; do
	name=$(basename $file)
	source ./format_table.sh $name
done
