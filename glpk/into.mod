# In-band Telemetry Optimization problem
#
# This problem finds the least amount of telemetry data fetch possible that
# gets data from all routers present at a landscape
#
# Authors: Fernando Spaniol, Luciana Buriol, Jonatas Marques, Luciano Gaspary

set V;
# Set of routers in a network

param c;
# amount of flows that are given

set K := {1..c};
# Set of routes possible

set A;
# Set of archs in a network

var C{K,V} >= 0;
# Control the weight that each route is handling

var Y{K,V} binary;
# Check whether route k dispatches on node V

var X{A,K} binary;
# Check whether arch A is handled by route K

param F{i in {1..c}};
# Flows in the network

param q;
# Capacity that each flow can carry at one same time

minimize cost: sum{k in K, v in V} Y[k,v];
# amount of telemetry submitions

s.t. checkFlow{a in A}: sum{k in K} Y[a,k] = 1;
# check if all archs are being covered by a route

solve;

printf("\n\nINTO Problem, the flows are: \n\n");
printf(F[1]);
printf("\n");

end;
