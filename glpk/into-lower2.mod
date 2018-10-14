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

set F{s in S} within (V cross V);
# All flows in an environment

set Last{s in S} within (V cross V);
# All flows in an environment

set A within (V cross V);
# Set of archs in a network

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

s.t. dispatchLast{s in S, (u,v) in Last[s]}: Y[s,u] >= X[u,v,s];
# Dispatch the last node

s.t. break{s in S, (u,v) in F[s], (v,z) in F[s]}: Y[s,u] >= X[u,v,s] - X[v,z,s];
# Need to dispatch in case the next one is not selected

solve;

end;