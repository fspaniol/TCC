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

Write the validator, meaning that such a solution would be a suitable one

Transform the Data Parser from CPLEX into a public library

Write a table with the tests that were executed, their run time, node size, flow size, solution, etc...

## Validator

Make sure that every flow is getting dispatches by, and only one.
Make sure that whenever there's a break, the group is being dispatched.
Make sure that the weight doesn't surpass the limit.

## TODO

Parse all the links
Check if all of them are kept
Check if all C's are lower than the limit
Check that if a flow doesn't match the next one, then Y is dispatched

After that, modify the script to print the output, with counting the number of links and create the script that creates table in MarkDown
