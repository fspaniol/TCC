#!/bin/bash

for file in ./TopologyZoo/*
do
    nodes=$(head $file | grep "set V" | awk '{print $NF}' | tr -d ";")
    #echo $nodes

    flows=$(cat $file | grep "set S" | awk '{print $NF}' | tr -d ";")
    #echo $flows

    dir="zoo_${nodes}_${flows}"
    mkdir $dir

    mv $file "${dir}/zoo_${nodes}_${flows}.dat"
done

