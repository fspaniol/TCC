#!/bin/bash

echo "| TEST NAME | NODE COUNT | LINK COUNT | FLOW COUNT | TIME RAN | SOLUTION FOUND | GAP (%)|"
echo "|---|:---:|:---:|:---:|:---:|:---:|:---:|"

for file in ./networks/*/
do
    name=`basename $file`
    source ./execute.sh $name
done