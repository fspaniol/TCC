# In-band Telemetry Optimization problem
#
# Vehicle Routing Problem based approach
#
# This problem finds the least amount of telemetry data fetch possible that
# gets data from all routers present at a landscape
#
# Authors: Fernando Spaniol, Luciana Buriol, Jonatas Marques, Luciano Gaspary

set V;
# Set that defines what routers are in a network

set S;
# Array of indexes of flows

set Z := {0};
# Set that has the base router

set K := 1 .. card(V);
# Set that defines the indexes of the routes

param size = card(V);
# Max amount of routes

set F{s in S} within (V cross V);
# All flows in an environment

set A within (V cross V);
# Set of archs in a network

var X{A union (V cross Z) union (Z cross V),K} >=0, binary;
# Check whether arch A is handled by route K

param q;
# Capacity that each flow can carry at one same time

minimize groups: sum{v in V, k in K} X[0,v,k];
# amount of telemetry submitions

s.t. checkFlow{(u,v) in A}: sum{k in K} X[u,v,k] = 1;
# check if all archs are being covered by a route

s.t. keepFlow{k in K, v in V}: sum{(b,v) in A union (Z cross V)} X[b,v,k] = sum{(v,c) in A union (V cross Z)} X[v,c,k];
# This bind the route to go back to the base router

s.t. oneFlow{k in K}: sum{(u,v) in (Z cross V)} X[u,v,k] <= 1;
# The route only has one group

s.t. weight{k in K}: sum{(u,v) in A} X[u,v,k] <= q;
# limit the weight of each group

# TODO, limit bindings of the routes to archs of the same flow

solve;

display{k in K, (u,v) in A union (Z cross V) union (V cross Z): X[u,v,k] = 1}: X[u,v,k];
display{k in K}: sum{(u,v) in A} X[u,v,k];
end;
