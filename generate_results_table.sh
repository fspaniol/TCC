#!/bin/bash

column="\\multicolumn{1}{c|}{}"

echo "\\begin{landscape}"
echo "\\begin{longtable}{|c|c|c|c|cc|cc|cc|cc|}"
echo "\\caption{Result table}"
echo "\\hline"
echo "Instance Name & \\#nodes & \\#links & \\#flows & Compact                 &      & VRP                           &      & LB1                           &      & LB2                           &      \\\\ \\hline"
echo "&         &         &         & \\multicolumn{1}{c|}{Solution} & Time & \\multicolumn{1}{c|}{Solution} & Time & \\multicolumn{1}{c|}{Solution} & Time & \\multicolumn{1}{c|}{Solution} & Time \\\\ \\hline"

for file in ./networks/zoo_??_*/; do
	name=$(basename $file)
	links=$(wc -l <networks/$name/links.txt | sed -e 's/^[ \t]*//')
    nodes="$(expr $(sed '3q;d' networks/$name/input.dat | tr -cd ' ' | wc -m) - 2)"
    flows="$(cut -d'_' -f3 <<<$name)"
    into_sol=$(cat networks/$name/standard/groups.txt | grep "Number" | awk '{print $NF}')
    vrp_sol=$(cat networks/$name/vrp/groups.txt | grep "Number" | awk '{print $NF}')
    into_time_ran=$(cat networks/$name/standard/exec.txt | grep "Total (root+branch&cut)" | awk '{print $4}')
    vrp_time_ran=$(cat networks/$name/vrp/exec.txt | grep "Total (root+branch&cut)" | awk '{print $4}')
    lower=$(cat networks/$name/lower/groups.txt | grep "Number" | awk '{print $NF}')
    lower_time_ran=$(cat networks/$name/lower/exec.txt | grep "Total (root+branch&cut)" | awk '{print $4}')

    echo "$(echo $name | sed 's/_/\\_/g') & $nodes & $links & $flows & \\multicolumn{1}{c|}{$into_sol} & $into_time_ran & \\multicolumn{1}{c|}{$vrp_sol} & $vrp_time_ran & \\multicolumn{1}{c|}{$lower} & $lower_time_ran & \\multicolumn{1}{c|}{0} & 0 \\\\ \\hline "
done

echo "%\\legend{Source: The authors}"
echo "\\label{tbl:results}"
echo "\\end{longtable}"
echo "\\end{landscape}"