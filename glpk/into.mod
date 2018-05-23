# In-band Telemetry Optimization problem
#
# This problem finds the least amount of telemetry data fetch possible that
# gets data from all routers present at a landscape
#
# Authors: Fernando Spaniol, Luciana Buriol, Jonatas Marques, Luciano Gaspary
# what if i only use routers?!?!?! I can represent flows as sequence of routers
# minimize the routes that cover the base node 

set V;
# Set of routers in a network

set K := {1..card(V)-1};
# Set of routes possible

var C{K} >= 0;
# Control the weight that each route is handling

var Y{K,V} binary;
# Check whether node u is handled by route k

param d{u in V};
# Amount of items in each router of the network

param F{i in {1..2},u in V}, binary;
# Flows in the network

param q;
# Capacity that each flow can carry at one same time

minimize cost: sum{k in K} Y[k,0];
# amount of telemetry submitions

s.t. checkFlow{k in K, u in V: u != 0}: Y[k,u] <= sum{i in {1..2}} F[i,u];
# check if all elements in a route belong to some flow
# for now it can only check if some flow covers it
# we need to check whether all nodes in one route are covered by one flow

s.t. cover{u in V: u != 0}: sum{k in K} Y[k,u] = 1;
# Only one route takes care of a node

s.t. bind{k in K}: C[k] <= Y[k,0] * 9999999;
# If a route has weight higher than 0, it means it's being used and we should count it

s.t. setWeight{k in K}: C[k] = sum{u in V: u != 0} Y[k,u] * d[u];
# if a route covers a place, get its weight

s.t. limitWeight{k in K}: C[k] <= q;
# limit the weigth a route is carrying by que max weight

end;
