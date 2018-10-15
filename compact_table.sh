#!/bin/bash

# Counters for each row
first_first_first=0
first_first_second=0
first_first_third=0
first_second_first=0
first_second_second=0
first_second_third=0
second_first_first=0
second_first_second=0
second_first_third=0
second_second_first=0
second_second_second=0
second_second_third=0
third_first_first=0
third_first_second=0
third_first_third=0
third_second_first=0
third_second_second=0
third_second_third=0
fourth_first_first=0
fourth_first_second=0
fourth_first_third=0
fourth_second_first=0
fourth_second_second=0
fourth_second_third=0
fifth_first_first=0
fifth_first_second=0
fifth_first_third=0
fifth_second_first=0
fifth_second_second=0
fifth_second_third=0

for file in ./networks/*/ ; do
    name=$(basename $file)
    nodes="$(expr $(sed '3q;d' networks/$name/input.dat | tr -cd ' ' | wc -m) - 2)"
    links=$(wc -l <networks/$name/links.txt | sed -e 's/^[ \t]*//')
    flows="$(cut -d'_' -f3 <<<$name)"

    if [ $nodes -le 30 ] ; then
        if [ $links -le 25 ] ; then
            if [ $flows -le 15 ]; then
                first_first_first=$(($first_first_first + 1))
            else
                if [ $flows -le 30 ]; then
                    first_first_second=$(($first_first_second + 1))
                else
                    first_first_third=$(($first_first_third + 1))
                fi
            fi
        else
            if [ $flows -le 60 ]; then
                first_second_first=$(($first_second_first + 1))
            else
                if [ $flows -le 90 ]; then
                    first_second_second=$(($first_second_second + 1))
                else
                    first_second_third=$(($first_second_third + 1))
                fi

            fi
        fi
    fi

    if [[ ( $nodes -gt 30 ) && ( $nodes -le 60 ) ]]; then
                if [ $links -le 25 ] ; then
            if [ $flows -le 15 ]; then
                second_first_first=$(($second_first_first + 1))
            else
                if [ $flows -le 30 ]; then
                    second_first_second=$(($second_first_second + 1))
                else
                    second_first_third=$(($second_first_third + 1))
                fi
            fi
        else
            if [ $flows -le 60 ]; then
                second_second_first=$(($second_second_first + 1))
            else
                if [ $flows -le 90 ]; then
                    second_second_second=$(($second_second_second + 1))
                else
                    second_second_third=$(($second_second_third + 1))
                fi

            fi
        fi
    fi

    if [[ ( $nodes -gt 60 ) && ( $nodes -le 90 ) ]]; then
        if [ $links -le 25 ] ; then
            if [ $flows -le 15 ]; then
                third_first_first=$(($third_first_first + 1))
            else
                if [ $flows -le 30 ]; then
                    third_first_second=$(($third_first_second + 1))
                else
                    third_first_third=$(($third_first_third + 1))
                fi
            fi
        else
            if [ $flows -le 60 ]; then
                third_second_first=$(($third_second_first + 1))
            else
                if [ $flows -le 90 ]; then
                    third_second_second=$(($third_second_second + 1))
                else
                    third_second_third=$(($third_second_third + 1))
                fi

            fi
        fi
    fi

    if [[ ( $nodes -gt 90 ) && ( $nodes -le 130 ) ]]; then
        if [ $links -le 25 ] ; then
            if [ $flows -le 15 ]; then
                fourth_first_first=$(($fourth_first_first + 1))
            else
                if [ $flows -le 30 ]; then
                    fourth_first_second=$(($fourth_first_second + 1))
                else
                    fourth_first_third=$(($fourth_first_third + 1))
                fi
            fi
        else
            if [ $flows -le 60 ]; then
                fourth_second_first=$(($fourth_second_first + 1))
            else
                if [ $flows -le 90 ]; then
                    fourth_second_second=$(($fourth_second_second + 1))
                else
                    fourth_second_third=$(($fourth_second_third + 1))
                fi

            fi
        fi
    fi

    if [ $nodes -gt 130 ]; then
        if [ $links -le 25 ] ; then
            if [ $flows -le 15 ]; then
                fifth_first_first=$(($fifth_first_first + 1))
            else
                if [ $flows -le 30 ]; then
                    fifth_first_second=$(($fifth_first_second + 1))
                else
                    fifth_first_third=$(($fifth_first_third + 1))
                fi
            fi
        else
            if [ $flows -le 60 ]; then
                fifth_second_first=$(($fifth_second_first + 1))
            else
                if [ $flows -le 90 ]; then
                    fifth_second_second=$(($fifth_second_second + 1))
                else
                    fifth_second_third=$(($fifth_second_third + 1))
                fi

            fi
        fi
    fi
done

echo "\begin{landscape}"
echo "    \begin{table}[]"
echo "        \centering"
echo "        \begin{tabular}{|c|c|c|c|c|}"
echo "             \hline \#nodes & \#links & \#flows & amount & name \\\\ \hline"
echo "\multirow{6}{*}{1-30}"
echo "             & \multirow{3}{*}{1-25} & 1-15 & $first_first_first & blabla \\\\ \cline{3 - 5}& & 15-30 & $first_first_second & blabla \\\\ \cline{3-5} & & 30- & $first_first_third & blabla \\\\ \cline{2-5}"
echo "             & \multirow{3}{*}{25-} & 1-60 & $first_second_first & blabla \\\\ \cline{3-5}& & 60-90 & $first_second_second & blabla \\\\ \cline{3-5} & & 90- & $first_second_third & blabla \\\\ \hline"
echo "\multirow{6}{*}{30-60}"
echo "             & \multirow{3}{*}{1-40} & 1-20 & $second_first_first & blabla \\\\ \cline{3 -4}& & 20-50 & $second_first_second & blabla \\\\ \cline{3-4} & & 50- & $second_first_third & blabla \\\\ \cline{2-4}"
echo "             & \multirow{3}{*}{40-} & 1-40 & $second_second_first & blabla \\\\ \cline{3-4}& & 40-80 & $second_second_second & blabla \\\\ \cline{3-4} & & 80- & $second_second_third & blabla \\\\ \hline"
echo "\multirow{6}{*}{60-90}"
echo "             & \multirow{3}{*}{1-70} & 1-30 & $third_first_first & blabla \\\\ \cline{3 -4}& & 30-90 & $third_first_second & blabla \\\\ \cline{3-4} & & 90- & $third_first_third & blabla \\\\ \cline{2-4}"
echo "             & \multirow{3}{*}{70-} & 1-50 & $third_second_first & blabla \\\\ \cline{3-4}& & 50-100 & $third_second_second & blabla \\\\ \cline{3-4} & & 100- & $third_second_third & blabla \\\\ \hline "
echo "\multirow{6}{*}{90-130}"
echo "             & \multirow{3}{*}{1-100} & 1-50 & $fourth_first_first & blabla \\\\ \cline{3 -4}& & 50-100 & $fourth_first_second & blabla \\\\ \cline{3-4} & & 100- & $fourth_first_third & blabla \\\\ \cline{2-4}"
echo "             & \multirow{3}{*}{100-} & 1-80 & $fourth_second_first & blabla \\\\ \cline{3-4}& & 80-150 & $fourth_second_second & blabla \\\\ \cline{3-4} & & 150- & $fourth_second_third & blabla \\\\ \hline"
echo "\multirow{6}{*}{130-}" 
echo "             & \multirow{3}{*}{1-200} & 1-100 & $fifth_first_first & blabla \\\\ \cline{3 -4}& & 100-300 & $fifth_first_second & blabla \\\\ \cline{3-4} & & 300- & $fifth_first_third & blabla \\\\ \cline{2-4}"
echo "             & \multirow{3}{*}{200-} & 1-300 & $fifth_second_first & blabla \\\\ \cline{3-4}& & 300-1000 & $fifth_second_second & blabla \\\\ \cline{3-4} & & 1000- & $fifth_second_third & blabla \\\\ \hline"
echo "        \end{tabular}"
echo "        \caption{Caption}"
echo "        \label{tab:results-short}"
echo "    \end{table}"
echo "\end{landscape}"