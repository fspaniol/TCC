# In-band Telemetry Optimization problem
#
# This problem finds the least amount of telemetry data fetch possible that
# gets data from all routers present at a landscape
#
# Authors: Fernando Spaniol, Luciana Buriol, Jonatas Marques, Luciano Gaspary

set S;
# Array of indexes of flows

set F{s in S};
# All flows in an environment

set K := {s in S};
# Set of routes possible

set V;
# Set that defines what routers are in a network

set A := {(1,2),(2,3)};
# Set of archs in a network

var C{K,V} >= 0;
# Control the weight that each route is handling

var Y{K,V} binary;
# Check whether route k dispatches on node V

var X{A,K} binary;
# Check whether arch A is handled by route K

param q;
# Capacity that each flow can carry at one same time

minimize cost: sum{k in K, u in V} Y[k,u];
# amount of telemetry submitions

s.t. checkFlow{(a,b) in A}: sum{k in K} X[a,b,k] = 1;
# check if all archs are being covered by a route

#s.t. sameFlow(f in F, a in f): X[a,f] <= F[0];
# Check whether a route only takes something from the same index

#s.t. delivery{(u,v) in A, k in K}: X[(u,v),k] >= Y[k,u];

solve;

printf{(a,b) in A} "\n%d %d \n",a, b;
#printf{(f,g) in F[1]} "\n\n%d\n\n", g;

end;
