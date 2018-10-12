#!/bin/bash

# This script takes a folder and parses the data from all scenarios
# After that, calls a go script which will group likely values for a better representation

rm -rf tmp
mkdir tmp

for file in ./networks/*_*_*/; do
	name=$(basename $file)
	
    links=$(wc -l <networks/$name/links.txt | sed -e 's/^[ \t]*//')
    nodes="$(expr $(sed '3q;d' networks/$name/input.dat | tr -cd ' ' | wc -m) - 2)"
    flows="$(cut -d'_' -f3 <<<$name)"
    time=$(cat networks/$name/standard/exec.txt | grep "Total (root+branch&cut)" | awk '{print $4}')

    val=`expr $links \* $nodes \* $flows`
    
    if [ "$time" != "" ]; then
 	    echo $val $time >> tmp/plot.txt
    fi
done

go run scripts/plot/generate.go > links_nodes_flows.txt
