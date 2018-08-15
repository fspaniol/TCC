# TCC

# Thesis of the conclusion of the Computer Science program at UFRGS.

## Current status:

Have to parse the output of CPLEX

## Executing `execute.sh`

To execute the `Execute` shell script, simple call it and pass the test name, for example:

`./execute.sh simple`

It will call the conversion from GLPK to CPLEX and then call CPLEX and write the solution to the `simple` test folder, in `glpk/simple`.

## Having to do:

I could print the solutions as JSON so that it can be easier for someone to read
Talk to jonatas regarding what format he would rather have

Have to split the groups regarding where to dispatch
