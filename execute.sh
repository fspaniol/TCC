#/bin/bash

# Usage, just call this script with the name of the test you want to run and then it will create the linear programming file, it will execute cplex and then convert it 

# Generate the linear file
# glpsol -m glpk/into.mod -d glpk/$1/$1.dat --wlp glpk/$1/$1.lp --check

# Execute cplex and put the output into the file folder
# cplex/cplex -c "READ glpk/$1/$1.lp" "OPTIMIZE" "WRITE glpk/$1/$1.sol"

# Execute the parser and put the output into the file folder as well
go run cplex/parser.go $1 > glpk/$1/$1.txt 
