#!/bin/bash

first_group=0
second_group=0
third_group=0
fourth_group=0
fifth_group=0

count=0
count2=0
count3=0
dummy=0

for file in ./networks/*/ ; do
    name=$(basename $file)
    nodes="$(expr $(sed '3q;d' networks/$name/input.dat | tr -cd ' ' | wc -m) - 2)"
    links=$(wc -l <networks/$name/links.txt | sed -e 's/^[ \t]*//')
    flows="$(cut -d'_' -f3 <<<$name)"

    if [ $nodes -le 30 ] ; then
        first_group=$(($first_group + 1))
        
        if [ $links -le 25 ] ; then
            if [ $flows -le 15 ]; then
                dummy=0
            else
                if [ $flows -le 30 ]; then
                    dummy=0
                else
                    dummy=0
                fi

            fi
        else
            if [ $flows -le 60 ]; then
                count=$(($count + 1))
            else
                if [ $flows -le 90 ]; then
                    count2=$(($count2 + 1))
                else
                    count3=$(($count3 + 1))
                fi

            fi
        fi

    fi

    if [[ ( $nodes -gt 30 ) && ( $nodes -le 60 ) ]]; then
        second_group=$(($second_group + 1))
    fi

    if [[ ( $nodes -gt 60 ) && ( $nodes -le 90 ) ]]; then
        third_group=$(($third_group + 1))
    fi

    if [[ ( $nodes -gt 90 ) && ( $nodes -le 130 ) ]]; then
        fourth_group=$(($fourth_group + 1))
    fi

    if [ $nodes -gt 130 ]; then
        fifth_group=$(($fifth_group + 1))
    fi
done

echo $first_group
# echo $second_group
# echo $third_group
# echo $fourth_group
# echo $fifth_group

echo $count
echo $count2
echo $count3