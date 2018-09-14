#!/bin/bash

echo "| TEST NAME | NODE COUNT | LINK COUNT | FLOW COUNT | TIME RAN | SOLUTION FOUND | LOWER BOUND | GAP (%)| PROPORTION | ITERATIONS |"
echo "|---|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|"

for file in ./networks/zoo_?_*/; do
	name=$(basename $file)
	source ./execute.sh $name
done
