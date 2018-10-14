#/bin/bash

links=$(wc -l <networks/$1/links.txt | sed -e 's/^[ \t]*//')
nodes="$(expr $(sed '3q;d' networks/$1/input.dat | tr -cd ' ' | wc -m) - 2)"
flows="$(cut -d'_' -f3 <<<$1)"
into_sol=$(cat networks/$1/standard/groups.txt | grep "Number" | awk '{print $NF}')
vrp_sol=$(cat networks/$1/vrp/groups.txt | grep "Number" | awk '{print $NF}')
into_time_ran=$(cat networks/$1/standard/exec.txt | grep "Total (root+branch&cut)" | awk '{print $4}')
vrp_time_ran=$(cat networks/$1/vrp/exec.txt | grep "Total (root+branch&cut)" | awk '{print $4}')
lower=$(cat networks/$1/lower/groups.txt | grep "Number" | awk '{print $NF}')
lower_time_ran=$(cat networks/$1/lower/exec.txt | grep "Total (root+branch&cut)" | awk '{print $4}')
lower2=$(cat networks/$1/lower2/groups.txt | grep "Number" | awk '{print $NF}')
lower2_time_ran=$(cat networks/$1/lower2/exec.txt | grep "Total (root+branch&cut)" | awk '{print $4}')


# Latex table
#echo "$(echo $1 | sed 's/_/\\_/g') & $nodes & $links & $flows & $into_sol & $into_time_ran & $vrp_sol & $vrp_time_ran & $lower & $lower_time_ran & $lower2 & $lower2_time_ran \\\\ \hline "

# # Format of the table
# # "| TEST NAME | NODE COUNT | LINK COUNT | FLOW COUNT | COMPACT SOLUTION | COMPACT TIME RAN | VRP SOLUTION | VRP TIME RAN | LOWER SOLUTION | LOWER TIME RAN | LOWER2 SOLUTION | LOWER2 TIME RAN |"
echo "|$(echo $1 | sed 's/_/\\_/g')|$nodes|$links|$flows|$into_sol|$into_time_ran|$vrp_sol|$vrp_time_ran|$lower|$lower_time_ran|$lower2|$lower2_time_ran|"


#gap=$(cat networks/$1/standard/exec.txt | grep "(gap =" | awk '{print $NF}' | tr -d ")")
#iterations=$(cat networks/$1/standard/exec.txt | grep "Iterations" | awk '{print $8}')
#proportion=$(bc <<<"scale=2; $into_sol/$lower")

#if [ "$gap" == "" ] && [ "$into_sol" != "" ]; then
# 	gap="0.00%"
# fi


