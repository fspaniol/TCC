#/bin/bash

links=$(wc -l <networks/$1/links.txt | sed -e 's/^[ \t]*//')
nodes="$(expr $(sed '3q;d' networks/$1/input.dat | tr -cd ' ' | wc -m) - 2)"
flows="$(cut -d'_' -f3 <<<$1)"
into_sol=$(cat networks/$1/standard/groups.txt | grep "Number" | awk '{print $NF}')
vrp_sol=$(cat networks/$1/vrp/groups.txt | grep "Number" | awk '{print $NF}')
into_time_ran=$(cat networks/$1/standard/exec.txt | grep "Total (root+branch&cut)" | awk '{print $4}')
vrp_time_ran=$(cat networks/$1/vrp/exec.txt | grep "Total (root+branch&cut)" | awk '{print $4}')
gap=$(cat networks/$1/standard/exec.txt | grep "(gap =" | awk '{print $NF}' | tr -d ")")
lower=$(cat networks/$1/lower/groups.txt | grep "Number" | awk '{print $NF}')
iterations=$(cat networks/$1/standard/exec.txt | grep "Iterations" | awk '{print $8}')
proportion=$(bc <<<"scale=2; $into_sol/$lower")

if [ "$gap" == "" ] && [ "$into_sol" != "" ]; then
 	gap="0.00%"
 fi

# # Format of the table
# # "| TEST NAME | NODE COUNT | LINK COUNT | FLOW COUNT | TIME RAN | SOLUTION FOUND | LOWER BOUND | GAP | PROPORTION | ITERATIONS |"
echo "|$(echo $1 | sed 's/_/\\_/g')|$nodes|$links|$flows|$into_time_ran|$into_sol|$vrp_time_ran|$vrp_sol|$lower|$gap|$proportion|$iterations|"
