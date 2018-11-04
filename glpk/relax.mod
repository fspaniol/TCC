# In-band Telemetry Optimization problem
#
# This problem finds the least amount of telemetry data fetch possible that
# gets data from all routers present at a landscape
#
# Authors: Fernando Spaniol, Luciana Buriol, Jonatas Marques, Luciano Gaspary

set S;
# Array of indexes of flows

set V;
# Set that defines what routers are in a network

set F{s in S}, dimen 2;
# All flows in an environment

set Last{s in S}, dimen 2;
# All flows in an environment

set A, dimen 2;
# Set of archs in a network

var C{S,V} >= 0;
# Control the weight that each route is handling

var Y{S,V} >=0;
# Check whether route k dispatches on node V

var X{A,S} >=0;
# Check whether arch A is handled by route K

param q;
# Capacity that each flow can carry at one same time

minimize groups: sum{s in S, u in V} Y[s,u];
# amount of telemetry submitions

s.t. checkFlow{(u,v) in A}: sum{s in S} X[u,v,s] = 1;
# check if all archs are being covered by a route

s.t. sameFlow{s in S, (u,v) in A diff F[s]}: X[u,v,s] = 0;
# Make sure that a route only takes items from passes through a flow with same index

s.t. deliver{s in S, (u,v) in F[s]}: X[u,v,s] >= Y[s,u];
# A route can only deliver if it collects on that node

s.t. receive{s in S, (u,v) in F[s]}: C[s,u] <= X[u,v,s] * q;
# If a node is not going to collect a flow, it should have never gotten any weight

s.t. weight1{s in S, (u,v) in F[s]}: Y[s,u] - X[u,v,s] >= -C[s,v];
# If a route carries and not delivers, bind the weight, if it carries and delivers, the weight has to be 0

s.t. weight2{s in S, (u,v) in F[s]}: (-Y[s,u] + X[u,v,s]) * q >= C[s,v];
# Limit the capacity of a flow and make it dispatch

s.t. bindWeight1{s in S, (u,v) in F[s]}: C[s,v] <= C[s,u] + 1 + (1 - X[u,v,s]) * q + Y[s,u] * q;
# First bindage of the weight

s.t. bindWeight2{s in S, (u,v) in F[s]}: C[s,v] >= C[s,u] + 1 - (1 - X[u,v,s]) * q - Y[s,u] * q;
# Second bindage of the weight 

s.t. dispatchLast{s in S, (u,v) in Last[s]}: Y[s,u] >= X[u,v,s];
# Dispatch the last node

solve;

end;