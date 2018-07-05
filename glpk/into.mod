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

set F{s in S} within (V cross V);
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

s.t. sameFlow{s in S, (u,v) in A diff F[s]}: X[u,v,s] = 0;
# Make sure that a route only takes items from passes through a flow with same index

s.t. deliver{(u,v) in A, k in K}: X[u,v,k] >= Y[k,u];
# A route can only deliver if it collects on that node

s.t. weight1{(u,v) in A, k in K}: Y[k,u] - X[u,v,k] >= -C[k,v];# + C[k,u];
# If a route carries and not delivers, bind the weight, if it carries and delivers, the weight has to be 0

s.t. weight2{(u,v) in A, k in K}: (-Y[k,u] + X[u,v,k]) * q >= C[k,v];
# Limit the capacity of a flow and make it dispatch

s.t. bindWeight1{(u,v) in A, k in K}: C[k,v] <= C[k,u] + 1 + (1 - X[u,v,k]) * q + Y[k,u] * q;
# First bindage of the weight

s.t. bindWeight2{(u,v) in A, k in K}: C[k,v] >= C[k,u] + 1 - (1 - X[u,v,k]) * q - Y[k,u] * q;
# Second bindage of the weight 

# have to make sure they dispatch at the last node

solve;

#display{s in S, a in V diff F[s]} a;

end;
