# TCC

# Thesis of the conclusion of the Computer Science program at UFRGS.

## Current status:

Writing the thesis
Creating scripts to create tables in LaTeX

## Executing `execute.sh`

To execute the `Execute` shell script, simple call it and pass the test name, for example:

`./execute.sh zoo_7_3`

It will call the conversion from GLPK to CPLEX and then call CPLEX and write the solution to the `simple` test folder, in `glpk/zoo_7_3`.

## Execute all

The script `execute_all` will execute everything you need for all tests inside the `networks` folder


## Validator

Implemented in parse.go

Make sure that every flow is getting dispatches by, and only one.
Make sure that whenever there's a break, the group is being dispatched.
Make sure that the weight doesn't surpass the limit.

## TODO
Print the output in JSON