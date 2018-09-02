# Format to insert data into the INTO problem

In the first line, there should be `data;` to indicate that such file represents data into the program.

## Set V

A set of routers should be declared, in our approach, we use the `V` keyword for it, therefore to indicate what routers are present in a network, declare the `V` set, e. g.:

```
set V := 1 2 3;
```

## Set A

To indicate what links are being used in a network we use set `A` and because links connect two routers, each entry should be composed of two routers which are ordered, so `1 2` != `2 1`, e.g.:

```
set A := 1 2
         2 1
         2 3
         ;
```

In this particular example, `3 2` probably exists in the network, but it does not have a flow active through it, so we don't insert it into set `A`.

Since in GLPK ignores whitespaces, I would highly recommend splitting the entries with new lines, to improve readability.

## Set S

To indicate the names of the current flows in a network, one should list them in a set called `S`, e.g.:

```
set S := 1 2 3;
```

## Set F

Set `F` represents the path of each flow given in S, each entry has to be given in the format of 
```
F[<name>] := <path>;
```
 the path is also given with links, therefore each entry is composed of 2 routers, a possible entry to the example above would be the following:

```
set F[1] := 1 2
            2 3;
set F[2] := 2 3;
set F[3] := 2 1;
```

## Set Last

Set `Last` is a set that only tells what is the last link of a flow, since in GLPK we can't access the order of a set, this is needed to be able to force the flow to dispatch at the lost router. Therefore, for the example above the `Last` set would be:

```
set Last[1] := 2 3;
set Last[2] := 2 3;
set Last[3] := 2 1;
```

## Param q

Param q states the total capacity of each flow, it will determine how many items a route can gather before having to dispatch due to it being full, e.g.:

```
#param q := 5;
```

## End

To finish the data file, one has to add a line containing `end;` at the bottom.


# Full entry example:

```
data;

set V := 1 2 3 4 5;
# Set that defines the routers present at a network

set A := 1 2
		3 4
		2 3
		4 5
		;
# Set that defines what archs are in a network

set S := 1 2;
# Set that defines the flows in a network

set F[1] := 1 2 
			2 3;
set F[2] := 1 2
			2 3
			3 4
			4 5;
# Sets that define the flows

set Last[1] := 2 3;
set Last[2] := 4 5;
# Set last indicates what is the last link in every flow

#param q := 10;
# Parameter that defines the limit of weight for each flow

#param last [1] 1 2 [2] 4 5;

end;

```