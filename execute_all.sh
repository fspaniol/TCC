#!/bin/bash

echo "| TEST NAME | NODE COUNT | LINK COUNT | FLOW COUNT | COMPACT SOLUTION | COMPACT TIME | VRP SOLUTION | VRP TIME | LOWER SOLUTION | LOWER TIME | RELAX SOLUTION | RELAX TIME |"
echo "|---|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|"

for file in ./networks/*/; do
	name=$(basename $file)
	source ./format_table.sh $name
done
