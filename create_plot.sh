#!/bin/bash

# This script takes a folder and parses the data from all scenarios
# After that, calls a go script which will group likely values for a better representation

rm -rf tmp
mkdir tmp

for file in ./networks/*/; do
	name=$(basename $file)
	
    links=$(wc -l <networks/$name/links.txt | sed -e 's/^[ \t]*//')
    nodes="$(expr $(sed '3q;d' networks/$name/input.dat | tr -cd ' ' | wc -m) - 2)"
    flows="$(cut -d'_' -f3 <<<$name)"
    gap=$(cat networks/$name/standard/exec.txt | grep "%" | awk '{print $NF}' | tail -n1 | tr -d "%)")
    time=$(cat networks/$name/standard/exec.txt | grep "Solution time =" | awk '{print $4}')

    val=`expr $links \* $nodes \* $flows`
    
    if [ "$gap" != "" ]; then
        if (( $(echo "$time < 3000" |bc -l) )); then
            gap="0.00"
        fi
 	    echo $val $gap >> tmp/plot.txt
    fi
done

go run scripts/plot/generate.go > cover-gap.txt
