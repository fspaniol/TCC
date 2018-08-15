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

FOUND A BUG ON JONATAS WHERE IT IS NOT DELIVERING THE LAST, FOR EXAMPLE:
Flow 145: {762 750} {750 738} {738 761} {761 1032} {1032 240} 
Flow 145: {1420 1173} {1173 1121} {1121 1144} {1144 1156} 
Flow 145: {1328 1363} {1363 1381} {1381 1388} {1388 1420} Flow 134: {1298 1260} 
Flow 134: {1393 1361} {1361 1323} {1323 427} 
Flow 134: {1374 1393}