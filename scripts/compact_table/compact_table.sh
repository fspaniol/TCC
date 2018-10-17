#!/bin/bash

for file in ./networks/*/ ; do
    name=$(basename $file)
    nodes="$(expr $(sed '3q;d' networks/$name/input.dat | tr -cd ' ' | wc -m) - 2)"
    links=$(wc -l <networks/$name/links.txt | sed -e 's/^[ \t]*//')
    flows="$(cut -d'_' -f3 <<<$name)"
    compact_time=$(cat networks/$name/standard/exec.txt | grep "Total (root+branch&cut)" | awk '{print $4}')
    compact_gap=$(cat networks/$name/standard/exec.txt | grep "%" | awk '{print $NF}' | tail -n1 | tr -d "%)")
    vrp_time=$(cat networks/$name/vrp/exec.txt | grep "Total (root+branch&cut)" | awk '{print $4}')
    vrp_gap=$(cat networks/$name/vrp/exec.txt | grep "%" | awk '{print $NF}' | tail -n1 | tr -d "%)")
    lower_time=$(cat networks/$name/lower/exec.txt | grep "Total (root+branch&cut)" | awk '{print $4}')
    lower_gap=$(cat networks/$name/lower/exec.txt | grep "%" | awk '{print $NF}' | tail -n1 | tr -d "%)")

    if [ "$compact_time" == "" ]; then
        compact_time="0.00"
    fi

    if [ "$compact_gap" == "" ] && [ "$compact_sol" != "" ]; then
     	compact_gap="0.00"
        echo "here"
    fi

    if [ "$vrp_sol" == "" ]; then
        vrp_gap="0.00"
        vrp_time="0.00"
    else
        if [ "$vrp_gap" == "" ]; then
            vrp_gap="0.00"
        fi
    fi

    if [ "$vrp_time" == "" ]; then
        vrp_time="0.00"
    fi

    if [ "$lower_gap" == "" ] && [ "$lower_sol" != "" ]; then
     	lower_gap="0.00"
    fi

    if [ "$lower_time" == "" ]; then
        lower_time="0.00"
    fi

    echo $nodes $links $flows $compact_time $compact_gap $vrp_time $vrp_gap $lower_time $lower_gap > networks/$name/info.txt
done