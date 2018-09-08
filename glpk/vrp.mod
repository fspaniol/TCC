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

set F{s in S} within (V cross V);
# All flows in an environment

set E{s in S};

var X{A union (V cross Z) union (Z cross V),K} >=0, binary;
# Check whether arch A is handled by route K

param q;
# Capacity that each flow can carry at one same time

minimize groups: sum{v in V, k in K} X[0,v,k];
# amount of telemetry submitions

s.t. checkFlow{(u,v) in A}: sum{k in K} X[u,v,k] >= 1;
# check if all archs are being covered by a route

#s.t. keepFlow{s in S, v in V, k in K}: sum{(b,v) in A union (Z cross {v})} X[b,v,k] = sum{(v,c) in A union ({v} cross Z)} X[v,c,k];
s.t. keepFlow{k in K, s in S, v in E[s]}: sum{(a,v) in (F[s] union (Z cross V))} X[a,v,k] = sum{(v,b) in (F[s] union (V cross Z))} X[v,b,k];
# This bind the route to go back to the base router

#s.t. oneFlow{k in K}: sum{(u,v) in (Z cross V)} X[u,v,k] <= 1;
#The route only has one group

s.t. weight{k in K}: sum{(u,v) in A} X[u,v,k] <= q;
# limit the weight of each group

# TODO, limit bindings of the routes to archs of the same flow
# Maybe when trying to add with a set that has no 
# I found the error
# Lets say two flows have the same node in them, therefore (0,x) will be one in one of the routes 
# But when it's checking in the the other flow, it already has one, so it crashes
# Have to get a new type of set that lists all elements in that flow
# if two routes share a link (could be (0,1), (1,2), whatever) then the sum will get messed up
# In the case of flows (1,,2) and (2,3)
# The first one will have [0,1], [1,2] and [2,0]
# So when the sum of the second tries to go for [2,3], it will have [2,0] already, then the sum will be 2 against 1

solve;
#display{s in S, v in V, (a, v) in F[s] union (Z cross {v})}: s, a, v;
display{k in K, (u,v) in A union (Z cross {V}) union (V cross Z): X[u,v,k] = 1}: X[u,v,k];
#display{k in K, (u,v) in A}: X[u,v,k];
#printf{s in S, v in V, (b,v) in F[s] union (Z cross {v})}: 'Flow: %s, from: %s, to: %s \n',s, b, v;
#printf{s in S, k in K, v in V}: "Flow: %s, Group: %s, Node: %s, IN: %d, Out: %d \n", s, k, v, sum{(b,v) in F[s] union (Z cross {v})} X[b,v,k], sum{(v,c) in F[s] union ({v} cross Z)} X[v,c,k];
#display{k in K, v in V}: sum{(b,v) in A union (Z cross {v})} X[b,v,k], sum{(v,c) in A union ({v} cross Z)} X[v,c,k];

end;
