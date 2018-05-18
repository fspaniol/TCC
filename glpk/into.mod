# In-band Telemetry Optimization problem
#
# This problem finds the least amount of telemetry data fetch possible that
# gets data from all routers present at a landscape
#
# Authors: Fernando Spaniol, Luciana Buriol, Jonatas Marques, Luciano Gaspary

set F;
# Set of flows in an environment

set V;
# Set of routers in a network

set N within(V cross V);
# Set of links (or archs) in a given network

set U within V;
# set of links leaving base router

set K within N;
# Set of routes possible

var C{K,V};
# Control que weight each route has after node u

var X{N,K} >= 0;
# Check whether link a is covered by route k

var Y{K,V};
# Check whether node u is handled by route k

param d{v in V};
# Amount of items in each router of the network

param q;
# Capacity that each flow can carry at one same time

minimize cost: sum{(i,j) in N,(k,l) in K} X[i,j,k,l];
# amount of telemetry submitions

s.t. links{(k,l) in K, u in V, f in F}: sum{(i,j) in N} X[i,j,k,l] - sum{(i,j) in N} X[i,j,k,l] = 0;
# If a link enters a place in one flow, one has to exit

s.t. cover{u in V}: sum{(k,l) in K} Y[k,l,u] = 1;
# Only one route takes care of a node

s.t. bind{(k,l) in K, u in V}: Y[k,l,u] = sum{(i,j) in N} X[i,j,k,l];
# if a given arch A in route K is used, mark it on Y

s.t. setWeight{u in V, (k,l) in K}: C[k,l,u+1] - C[k,l,u] = d[u+1] * Y[k,l,u+1];
# if a route covers a place, get its weight

s.t. limitWeight{(k,l) in K, u in V}: C[k,l,u] <= q;
# limit the weigth a route is carrying by que max weight

end;
