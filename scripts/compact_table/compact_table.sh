#!/bin/bash

for file in ./networks/*/ ; do
    name=$(basename $file)
    nodes="$(expr $(sed '3q;d' networks/$name/input.dat | tr -cd ' ' | wc -m) - 2)"
    links=$(wc -l <networks/$name/links.txt | sed -e 's/^[ \t]*//')
    flows="$(cut -d'_' -f3 <<<$name)"
    compact_time=$(cat networks/$name/standard/exec.txt | grep "Solution time =" | awk '{print $4}')
    compact_gap=$(cat networks/$name/standard/exec.txt | grep "%" | awk '{print $NF}' | tail -n1 | tr -d "%)")
    vrp_time=$(cat networks/$name/vrp/exec.txt | grep "Solution time =" | awk '{print $4}')
    vrp_gap=$(cat networks/$name/vrp/exec.txt | grep "%" | awk '{print $NF}' | tail -n1 | tr -d "%)")
    lower_time=$(cat networks/$name/lower/exec.txt | grep "Solution time =" | awk '{print $4}')
    lower_gap=$(cat networks/$name/lower/exec.txt | grep "%" | awk '{print $NF}' | tail -n1 | tr -d "%)")

    if [ "$compact_time" == "" ]; then
        compact_time="0.00"
    fi

    if [ "$compact_gap" == "" ]; then
     	compact_gap="0.00"
    fi

    if [ "$vrp_gap" == "" ]; then
        vrp_gap="0.00"
    fi

    if [ "$vrp_time" == "" ]; then
        vrp_time="0.00"
    fi

    if [ "$lower_gap" == "" ]; then
     	lower_gap="0.00"
    fi

    if [ "$lower_time" == "" ]; then
        lower_time="0.00"
    fi

    echo $nodes $links $flows $compact_time $compact_gap $vrp_time $vrp_gap $lower_time $lower_gap > networks/$name/info.txt
done