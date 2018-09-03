#/bin/bash

# Usage: just call this script with the name of the test you want to run and then it will create the linear programming file, it will execute cplex and then convert it

# Check the time when started to execute the script
first=$SECONDS

# Generate the linear file
glpsol -m glpk/into-lower.mod -d networks/$1/$1.dat --wlp networks/$1/$1-lower.lp --check

# Execute cplex and put the output into the file folder
cplex/cplex -c "READ networks/$1/$1-lower.lp" "SET timelimit 3600" "SET threads 4" "SET logfile networks/$1/$1-exec-lower.txt" "SET output writelevel 3" "OPTIMIZE" "WRITE networks/$1/$1-lower.sol" "y"

#sed -n '/set A := /,/;/p' networks/$1/$1.dat | tr -d "setA:=;" >networks/$1/$1-links.txt

# Execute the parser and put the output into the file folder as well
go run cplex/parser.go $1 >networks/$1/$1-lower.txt

# Find bugs
#go run cplex/parser.go $1

# Get the final time and write output to the file
second=$SECONDS
elapsed=$(expr $second - $first)
echo "Time taken running everything:" $elapsed "seconds" >>networks/$1/$1-lower.txt

#links=$(wc -l <networks/$1/$1-links.txt | sed -e 's/^[ \t]*//')
# nodes="$(cut -d'_' -f2 <<<$1)"
# flows="$(cut -d'_' -f3 <<<$1)"
# sol=$(cat networks/$1/$1.txt | grep "Number" | awk '{print $NF}')
# time_ran=$(cat networks/$1/$1-exec.txt | grep "Total (root+branch&cut)" | awk '{print $4}')
# gap=$(cat networks/$1/$1-exec.txt | grep "(gap =" | awk '{print $NF}' | tr -d ")")
# lower=$(cat networks/$1/$1-lower.txt | grep "Number" | awk '{print $NF}')
# branch=0
# proportion=$(bc <<< "scale=2; $sol/$lower")

# if [ "$gap" == "" ] && [ "$sol" != "" ]; then
# 	gap="0.00%"
# fi

# # Format of the table
# # "| TEST NAME | NODE COUNT | LINK COUNT | FLOW COUNT | TIME RAN | SOLUTION FOUND | LOWER BOUND | GAP | PROPORTION |"
# echo "|$(echo $1 | sed 's/_/\\_/g')|$nodes|$links|$flows|$time_ran|$sol|$lower|$gap|$branch|$proportion|"
