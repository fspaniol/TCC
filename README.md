# TCC

# Thesis of the conclusion of the Computer Science program at UFRGS.

## Current status:

Have to parse the output of CPLEX

## Executing `execute.sh`

To execute the `Execute` shell script, simple call it and pass the test name, for example:

`./execute.sh simple`

It will call the conversion from GLPK to CPLEX and then call CPLEX and write the solution to the `simple` test folder, in `glpk/simple`.


## Validator

Implemented inside cplex/parse.go

Make sure that every flow is getting dispatches by, and only one.
Make sure that whenever there's a break, the group is being dispatched.
Make sure that the weight doesn't surpass the limit.

## TODO
Print the output in JSON
Transform the Data Parser from CPLEX into a public library
Get the results from lower bound
Execute all test in one hour to get final results
Parse results from branch and bound
Remember to delete all the exec files before running, otherwise they will be appended
Generate the new model with vehicle routing

## Bugs

Not really a bug, but, when a flow is entirely fetched, their weights can be whatever value, although never more than the max set by us.