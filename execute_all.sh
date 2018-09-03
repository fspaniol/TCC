#!/bin/bash

echo "| TEST NAME | NODE COUNT | LINK COUNT | FLOW COUNT | TIME RAN | SOLUTION FOUND | LOWER BOUND | GAP (%)| BRANCH | PROPORTION |"
echo "|---|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|"

for file in ./networks/zoo_7*/; do
	name=$(basename $file)
	source ./execute.sh $name
done
