#/bin/bash

# Usage: just call this script with the name of the test you want to run and then it will create the linear programming file, it will execute cplex and then convert it

#mkdir networks/$1/vrp

#rm networks/$1/standard/exec.txt

# Generate the linear file
#glpsol -m glpk/into.mod -d networks/$1/input.dat --wlp networks/$1/standard/model.lp --check

# Execute cplex and put the output into the file folder
#/opt/cplex/cplex/bin/x86-64_sles10_4\.1/cplex -c "READ networks/$1/standard/model.lp" "SET timelimit 3600" "SET threads 4" "SET logfile networks/$1/standard/exec.txt" "SET output writelevel 3" "OPTIMIZE" "WRITE networks/$1/standard/solution.sol" "y"

#sed -n '/set A := /,/;/p' networks/$1/input.dat | tr -d "setA:=;" >networks/$1/links.txt

# Execute the parser and put the output into the file folder as well
go run scripts/into/parser_into.go $1 >networks/$1/standard/groups.txt

#go run scripts/vrp/parser_vrp.go $1 >networks/$1/vrp/groups.txt

# Find bugs
#go run scripts/into/parser_into.go $1

links=$(wc -l <networks/$1/links.txt | sed -e 's/^[ \t]*//')
nodes="$(expr $(sed '3q;d' networks/$1/input.dat | tr -cd ' ' | wc -m) - 2)"
flows="$(cut -d'_' -f3 <<<$1)"
into_sol=$(cat networks/$1/standard/groups.txt | grep "Number" | awk '{print $NF}')
vrp_sol=$(cat networks/$1/vrp/groups.txt | grep "Number" | awk '{print $NF}')
into_time_ran=$(cat networks/$1/standard/exec.txt | grep "Total (root+branch&cut)" | awk '{print $4}')
vrp_time_ran=$(cat networks/$1/vrp/exec.txt | grep "Total (root+branch&cut)" | awk '{print $4}')
gap=$(cat networks/$1/standard/exec.txt | grep "(gap =" | awk '{print $NF}' | tr -d ")")
lower=$(cat networks/$1/lower/groups.txt | grep "Number" | awk '{print $NF}')
iterations=$(cat networks/$1/standard/exec.txt | grep "Iterations" | awk '{print $8}')
proportion=$(bc <<<"scale=2; $into_sol/$lower")

if [ "$gap" == "" ] && [ "$into_sol" != "" ]; then
 	gap="0.00%"
 fi

# # Format of the table
# # "| TEST NAME | NODE COUNT | LINK COUNT | FLOW COUNT | TIME RAN | SOLUTION FOUND | LOWER BOUND | GAP | PROPORTION | ITERATIONS |"
echo "|$(echo $1 | sed 's/_/\\_/g')|$nodes|$links|$flows|$into_time_ran|$into_sol|$vrp_time_ran|$vrp_sol|$lower|$gap|$proportion|$iterations|"
