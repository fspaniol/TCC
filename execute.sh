#/bin/bash

# Usage, just call this script with the name of the test you want to run and then it will create the linear programming file, it will execute cplex and then convert it

# Check the time when started to execute the script
first=$SECONDS

# Generate the linear file
glpsol -m glpk/into.mod -d networks/$1/$1.dat --wlp networks/$1/$1.lp --check

# Execute cplex and put the output into the file folder
cplex/cplex -c "READ networks/$1/$1.lp" "OPTIMIZE" "WRITE networks/$1/$1.sol"

# Execute the parser and put the output into the file folder as well
go run cplex/parser.go $1 > networks/$1/$1.txt

# Get the final time and write output to the file
second=$SECONDS
elapsed=`expr $second - $first`
echo "Time taken running everything:" $elapsed "seconds" >> networks/$1/$1.txt
