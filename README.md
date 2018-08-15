# TCC

# Thesis of the conclusion of the Computer Science program at UFRGS.

## Current status:

Have to parse the output of CPLEX

## Executing `execute.sh`

To execute the `Execute` shell script, simple call it and pass the test name, for example:

`./execute.sh simple`

It will call the conversion from GLPK to CPLEX and then call CPLEX and write the solution to the `simple` test folder, in `glpk/simple`.

## TODO:

I could print the solutions as JSON so that it can be easier for someone to read
Talk to jonatas regarding what format he would rather have

New bug:
+Flow 61: {641 695} {695 667} {667 653} {653 676} {676 1175} {1175 1137} {902 913} {913 861}
+Flow 61: {1137 1161} {1161 1145} {1145 1201} {1201 328}
