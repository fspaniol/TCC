# In-band Telemetry Optimization problem
#
# This problem finds the least amount of telemetry data fetch possible that
# gets data from all routers present at a landscape
#
# Authors: Fernando Spaniol, Luciana Buriol, Jonatas Marques, Luciano Gaspary

set S;
# Array of indexes of flows

set K := {s in S};
# Set of routes possible

set V;
# Set that defines what routers are in a network

set F{s in S};
# All flows in an environment

set A within (V cross V);
# Set of archs in a network

var C{K,V} >= 0;
# Control the weight that each route is handling

var Y{K,V} binary;
# Check whether route k dispatches on node V

var X{A,K} binary;
# Check whether arch A is handled by route K

param q;
# Capacity that each flow can carry at one same time

minimize groups: sum{k in K, u in V} Y[k,u];
# amount of telemetry submitions

s.t. checkFlow{(u,v) in A}: sum{k in K} X[u,v,k] = 1;
# check if all archs are being covered by a route

#s.t. sameFlow{s in S, (u,v) in A}: X[u,v,s] <= F[s];
# Check whether a route only takes something from the same index

s.t. deliver{(u,v) in A, k in K}: X[u,v,k] >= Y[k,u];
# A route can only deliver if it collects on that node

s.t. weight1{(u,v) in A, k in K}: Y[k,u] - X[u,v,k] >= C[k,v] * -1;
# If a route carries and not delivers, bind the weight, if it carries and delivers, the weight has to be 0

s.t. weight2{(u,v) in A, k in K}: ((-1 * Y[k,u]) + X[u,v,k]) * q >= C[k,v];
# Limit the capacity of a flow and make it dispatch

s.t. bindWeights{(u,v) in A, k in K}: C[k,v] - C[k,u] >= X[u,v,k] - Y[k,u];
# If it collects and not dispatches, add

#have to bind the routes to flows
# have to make sure they dispatch at the last node

solve;

display{s in S, a in V diff F[s]} a;

end;
