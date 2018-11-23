#!/bin/bash

echo "\\begin{landscape}"
echo "\\begin{longtable}{llllllllllllllll}"
echo "\\caption{Result table}"
echo "\\hline"
echo "Instance Name & \\#nodes & \\#links & \\#flows & \\multicolumn{3}{c|}{Cover} & \\multicolumn{3}{c|}{VRP} & \\multicolumn{3}{c|}{Lower Bound} & \\multicolumn{3}{c|}{Relax} \\\\ \\hline"
echo "& & & & Sol & Time & CPLEX Gap & Sol & Time & CPLEX Gap & Sol & Time & Gap_v & Sol & Time & Gap_v \\\\ \\hline"

for file in ./networks/*_?_*/; do
	name=$(basename $file)
	links=$(wc -l <networks/$name/links.txt | sed -e 's/^[ \t]*//')
    nodes="$(expr $(sed '3q;d' networks/$name/input.dat | tr -cd ' ' | wc -m) - 2)"
    flows="$(cut -d'_' -f3 <<<$name)"
    into_sol=$(cat networks/$name/standard/groups.txt | grep "Number" | awk '{print $NF}')
    into_time_ran=$(cat networks/$name/standard/exec.txt | grep "Solution time =" | awk '{print $4}')
    into_gap=$(cat networks/$name/standard/exec.txt | grep "%" | awk '{print $NF}' | tail -n1 | tr -d "%)")
    vrp_sol=$(cat networks/$name/vrp/groups.txt | grep "Number" | awk '{print $NF}')
    vrp_time_ran=$(cat networks/$name/vrp/exec.txt | grep "Solution time =" | awk '{print $4}')
    vrp_gap=$(cat networks/$name/vrp/exec.txt | grep "%" | awk '{print $NF}' | tail -n1 | tr -d "%)")
    lower_sol=$(cat networks/$name/lower/groups.txt | grep "Number" | awk '{print $NF}')
    lower_time_ran=$(cat networks/$name/lower/exec.txt | grep "Solution time =" | awk '{print $4}')
    lower_gap=$(echo "scale=2; 100*($into_sol-$lower_sol)/$into_sol" | bc -l)
    relax_sol=$(cat networks/$name/relax/groups.txt | grep "Number" | awk '{print $NF}')
    relax_time_ran=$(cat networks/$name/relax/exec.txt | grep "Solution time =" | awk '{print $4}')
    relax_gap=$(echo "scale=2; 100*($into_sol-$relax_sol)/$into_sol" | bc -l)

    if (( $(echo "$into_time_ran < 3000" |bc -l) )); then
        into_gap="0.00"
    fi

    if (( $(echo "$vrp_time_ran < 3000" |bc -l) )); then
        vrp_gap="0.00"
    fi

    echo "$(echo $name | sed 's/_/\\_/g') & $nodes & $links & $flows & $into_sol & $into_time_ran & $into_gap & $vrp_sol & $vrp_time_ran & $vrp_gap & $lower_sol & $lower_time_ran & $lower_gap & $relax_sol & $relax_time_ran & $relax_gap \\\\ \\hline "
done

for file in ./networks/*_??_*/; do
	name=$(basename $file)
	links=$(wc -l <networks/$name/links.txt | sed -e 's/^[ \t]*//')
    nodes="$(expr $(sed '3q;d' networks/$name/input.dat | tr -cd ' ' | wc -m) - 2)"
    flows="$(cut -d'_' -f3 <<<$name)"
    into_sol=$(cat networks/$name/standard/groups.txt | grep "Number" | awk '{print $NF}')
    into_time_ran=$(cat networks/$name/standard/exec.txt | grep "Solution time =" | awk '{print $4}')
    into_gap=$(cat networks/$name/standard/exec.txt | grep "%" | awk '{print $NF}' | tail -n1 | tr -d "%)")
    vrp_sol=$(cat networks/$name/vrp/groups.txt | grep "Number" | awk '{print $NF}')
    vrp_time_ran=$(cat networks/$name/vrp/exec.txt | grep "Solution time =" | awk '{print $4}')
    vrp_gap=$(cat networks/$name/vrp/exec.txt | grep "%" | awk '{print $NF}' | tail -n1 | tr -d "%)")
    lower_sol=$(cat networks/$name/lower/groups.txt | grep "Number" | awk '{print $NF}')
    lower_time_ran=$(cat networks/$name/lower/exec.txt | grep "Solution time =" | awk '{print $4}')
    lower_gap=$(echo "scale=2; 100*($into_sol-$lower_sol)/$into_sol" | bc -l)
    relax_sol=$(cat networks/$name/relax/groups.txt | grep "Number" | awk '{print $NF}')
    relax_time_ran=$(cat networks/$name/relax/exec.txt | grep "Solution time =" | awk '{print $4}')
    relax_gap=$(echo "scale=2; 100*($into_sol-$relax_sol)/$into_sol" | bc -l)

    if (( $(echo "$into_time_ran < 3000" |bc -l) )); then
        into_gap="0.00"
    fi

    if (( $(echo "$vrp_time_ran < 3000" |bc -l) )); then
        vrp_gap="0.00"
    fi

    echo "$(echo $name | sed 's/_/\\_/g') & $nodes & $links & $flows & $into_sol & $into_time_ran & $into_gap & $vrp_sol & $vrp_time_ran & $vrp_gap & $lower_sol & $lower_time_ran & $lower_gap & $relax_sol & $relax_time_ran & $relax_gap \\\\ \\hline "
done

for file in ./networks/*_???_*/; do
	name=$(basename $file)
	links=$(wc -l <networks/$name/links.txt | sed -e 's/^[ \t]*//')
    nodes="$(expr $(sed '3q;d' networks/$name/input.dat | tr -cd ' ' | wc -m) - 2)"
    flows="$(cut -d'_' -f3 <<<$name)"
    into_sol=$(cat networks/$name/standard/groups.txt | grep "Number" | awk '{print $NF}')
    into_time_ran=$(cat networks/$name/standard/exec.txt | grep "Solution time =" | awk '{print $4}')
    into_gap=$(cat networks/$name/standard/exec.txt | grep "%" | awk '{print $NF}' | tail -n1 | tr -d "%)")
    vrp_sol=$(cat networks/$name/vrp/groups.txt | grep "Number" | awk '{print $NF}')
    vrp_time_ran=$(cat networks/$name/vrp/exec.txt | grep "Solution time =" | awk '{print $4}')
    vrp_gap=$(cat networks/$name/vrp/exec.txt | grep "%" | awk '{print $NF}' | tail -n1 | tr -d "%)")
    lower_sol=$(cat networks/$name/lower/groups.txt | grep "Number" | awk '{print $NF}')
    lower_time_ran=$(cat networks/$name/lower/exec.txt | grep "Solution time =" | awk '{print $4}')
    lower_gap=$(echo "scale=2; 100*($into_sol-$lower_sol)/$into_sol" | bc -l)
    relax_sol=$(cat networks/$name/relax/groups.txt | grep "Number" | awk '{print $NF}')
    relax_time_ran=$(cat networks/$name/relax/exec.txt | grep "Solution time =" | awk '{print $4}')
    relax_gap=$(echo "scale=2; 100*($into_sol-$relax_sol)/$into_sol" | bc -l)

    if (( $(echo "$into_time_ran < 3000" |bc -l) )); then
        into_gap="0.00"
    fi

    if (( $(echo "$vrp_time_ran < 3000" |bc -l) )); then
        vrp_gap="0.00"
    fi

    echo "$(echo $name | sed 's/_/\\_/g') & $nodes & $links & $flows & $into_sol & $into_time_ran & $into_gap & $vrp_sol & $vrp_time_ran & $vrp_gap & $lower_sol & $lower_time_ran & $lower_gap & $relax_sol & $relax_time_ran & $relax_gap \\\\ \\hline "
done

echo "%\\legend{Source: The authors}"
echo "\\label{tbl:results}"
echo "\\end{longtable}"
echo "\\end{landscape}"