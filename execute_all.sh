#!/bin/bash

#echo "| TEST NAME | NODE COUNT | LINK COUNT | FLOW COUNT | COMPACT SOLUTION | COMPACT TIME | VRP SOLUTION | VRP TIME | LOWER SOLUTION | LOWER2 |"
#echo "|---|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|"

for file in ./networks/*/; do
	name=$(basename $file)
	source ./execute.sh $name
done
