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

set A within (V cross V);
# Set of archs in a network

set K := 1 .. card(A);
# Set that defines the indexes of the routes

set Last{s in S} within (V cross V);
# Dummy to not have to alter the inputs

set F{s in S} within (V cross V);
# All flows in an environment

var X{A union (V cross Z) union (Z cross V),K,S} >=0, binary;
# Check whether arch A is handled by route K

param q;
# Capacity that each flow can carry at one same time

minimize groups: sum{v in V, k in K, s in S} X[0,v,k,s];
# amount of telemetry submitions

s.t. checkFlow{(u,v) in A}: sum{s in S} sum{k in K} X[u,v,k,s] >= 1;
# check if all archs are being covered by a route

s.t. keepFlow{k in K, s in S, v in V}: sum{(a,v) in (F[s] union (Z cross {v}))} X[a,v,k,s] = sum{(v,b) in (F[s] union ({v} cross Z))} X[v,b,k,s];
# This bind the route to go back to the base router

s.t. bindFlow{k in K, s in S, (u,v) in A diff F[s]}: X[u,v,k,s] = 0;
# A link can only be tagged by a flow that has it

s.t. oneFlow{k in K}: sum{s in S} sum{(u,v) in (Z cross V)} X[u,v,k,s] <= 1;
#The route only has one group

s.t. weight{k in K}: sum{s in S} sum{(u,v) in A} X[u,v,k,s] <= q;
# limit the weight of each group

solve;
printf{k in K, s in S, (u,v) in A: X[u,v,k,s] = 1}: 'Group: %s: %s, %s\n', k, u, v;
end;
