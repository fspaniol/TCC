# In-band Telemetry Optimization problem
#
# This problem finds the least amount of telemetry data fetch possible that
# gets data from all routers present at a landscape
#
# Authors: Fernando Spaniol, Luciana Buriol, Jonatas Marques, Luciano Gaspary

set F;
# Set of flows in an environment

set K;
# Set of routes possible

set V;
# Set of routers in a network

set N;
# Set of links (or archs) in a given network
# https://en.wikibooks.org/wiki/GLPK/GMPL_Workarounds#Sets_of_sets

set U;
# set of links leaving base router

var C{k in K, u in V};
# Control que weight each flow has after node u

var X{a in N, k in K} >= 0;
# Check whether link a is covered by route k

var Y{k in K, u in V};
# Check whether node u is handled by route k

param d{v in V};
# Amount of items in each router of the network

param q;
# Capacity that each flow can carry at one same time

minimize cost: sum{a in N, k in K} X[a,k];
# amount of telemetry submitions

s.t. links{k in K, u in V, f in F}: sum{a in N} X[a,k] - sum{a in N} X[a,k] = 0;
# If a link enters a place in one flow, one has to exit

s.t. cover{u in V}: sum{k in K} Y[k,u] = 1;
# Only one route takes care of a node

s.t. bind{k in K, u in V}: Y[k,u] = sum{a in N} X[a,k];
# if a given arch A in route K is used, mark it on Y

s.t. setWeight{u in V, k in K}: C[k,u+1] - C[k,u] = d[u+1] * Y[k,u+1];
# if a route covers a place, get its weight

s.t. limitWeight{k in K, u in V}: C[k,u] <= q;
# limit the weigth a route is carrying by que max weight

data;

set V := 1 2 3 4 5 6 7 8 9 10;
set N := 12 23 26 27 34 45 59 69 78 89 910;
#set N := 0 1 0 0 0 0 0 0 0 0;
# the first number is the origin and the second is the destination

set F := f1 f2 f3;

set K := 1 2 3;

set U := 01 010;

param d := 
        1 10
        2 10
        3 10
        4 10
        5 10
        6 10
        7 10
        8 10
        9 10
        10 10;
    
param q := 25;

end;
