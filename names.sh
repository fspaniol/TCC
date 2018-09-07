#!/bin/bash

# for file in ./TopologyZoo/*
# do
#     nodes=$(head $file | grep "set V" | awk '{print $NF}' | tr -d ";")
#     #echo $nodes

#     flows=$(cat $file | grep "set S" | awk '{print $NF}' | tr -d ";")
#     #echo $flows

#     dir="zoo_${nodes}_${flows}"
#     mkdir $dir

#     mv $file "${dir}/zoo_${nodes}_${flows}.dat"
# done

for f in networks/*/; do
    pushd $f/standard/
    mv *links* ../links.txt
    mv *exec* exec.txt
    mv *sol solution.sol
    mv $f.txt groups.txt
    popd
    pushd $f/lower/
    mv *exec* exec.txt
    mv *sol solution.sol
    mv $f*.txt groups.txt
    popd
    pushd $f
    mv *.dat input.dat
    popd
done