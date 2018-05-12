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

set N;
# Set of links (or archs) in a given network

set V;
# Set of routers in a network

set U;
# set of links leaving base router

var x{a in N, k in K} >= 0;
# Check whether link a is covered by route K

param d{v in V};
# Amount of items in each router of the network

param q;
# Capacity that each flow can carry at one same time

minimize cost: sum{a in N} sum{k in K} x[a,k];
# amount of telemetry submitions

data;

set V := 1 2 3 4 5 6 7 8 9 10;
set N := 12 23 26 27 34 45 59 69 78 89 910;
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
