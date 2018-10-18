#/bin/bash

# Usage: just call this script with the name of the test you want to run and then it will create the linear programming file, it will execute cplex and then convert it

mkdir networks/$1/lower2

rm networks/$1/lower2/exec.txt

# Generate the linear file
glpsol -m glpk/into-lower2.mod -d networks/$1/input.dat --wlp networks/$1/lower2/model.lp --check

# Execute cplex and put the output into the file folder
/opt/cplex/cplex/bin/x86-64_sles10_4\.1/cplex -c "READ networks/$1/lower2/model.lp" "SET timelimit 3600" "SET threads 4" "SET logfile networks/$1/lower2/exec.txt" "SET output writelevel 4" "OPTIMIZE" "WRITE networks/$1/lower2/solution.sol" "y"

# Execute the parser and put the output into the file folder as well
#go run scripts/into/parser_into.go $1 >networks/$1/standard/groups.txt

#go run scripts/vrp/parser_vrp.go $1 >networks/$1/vrp/groups.txt

# Find bugs
#go run scripts/into/parser_into.go $1
