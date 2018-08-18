#!/bin/bash

for file in ./networks/*/
do
    name=`basename $file`
    source ./execute.sh $name
done