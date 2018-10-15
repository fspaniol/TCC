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
            if [ $flows -le 12 ]; then
                first_first_first=$(($first_first_first + 1))
            else
                if [ $flows -le 25 ]; then
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
        if [ $links -le 75 ] ; then
            if [ $flows -le 150 ]; then
                second_first_first=$(($second_first_first + 1))
            else
                if [ $flows -le 230 ]; then
                    second_first_second=$(($second_first_second + 1))
                else
                    second_first_third=$(($second_first_third + 1))
                fi
            fi
        else
            if [ $flows -le 325 ]; then
                second_second_first=$(($second_second_first + 1))
            else
                if [ $flows -le 500 ]; then
                    second_second_second=$(($second_second_second + 1))
                else
                    second_second_third=$(($second_second_third + 1))
                fi

            fi
        fi
    fi

    if [[ ( $nodes -gt 60 ) && ( $nodes -le 90 ) ]]; then
        if [ $links -le 125 ] ; then
            if [ $flows -le 500 ]; then
                third_first_first=$(($third_first_first + 1))
            else
                if [ $flows -le 800 ]; then
                    third_first_second=$(($third_first_second + 1))
                else
                    third_first_third=$(($third_first_third + 1))
                fi
            fi
        else
            if [ $flows -le 800 ]; then
                third_second_first=$(($third_second_first + 1))
            else
                if [ $flows -le 1200 ]; then
                    third_second_second=$(($third_second_second + 1))
                else
                    third_second_third=$(($third_second_third + 1))
                fi

            fi
        fi
    fi

    if [[ ( $nodes -gt 90 ) && ( $nodes -le 130 ) ]]; then
        if [ $links -le 195 ] ; then
            if [ $flows -le 1000 ]; then
                fourth_first_first=$(($fourth_first_first + 1))
            else
                if [ $flows -le 1900 ]; then
                    fourth_first_second=$(($fourth_first_second + 1))
                else
                    fourth_first_third=$(($fourth_first_third + 1))
                fi
            fi
        else
            if [ $flows -le 1800 ]; then
                fourth_second_first=$(($fourth_second_first + 1))
            else
                if [ $flows -le 2700 ]; then
                    fourth_second_second=$(($fourth_second_second + 1))
                else
                    fourth_second_third=$(($fourth_second_third + 1))
                fi

            fi
        fi
    fi

    if [ $nodes -gt 130 ]; then
        if [ $links -le 300 ] ; then
            if [ $flows -le 2750 ]; then
                fifth_first_first=$(($fifth_first_first + 1))
            else
                if [ $flows -le 4300 ]; then
                    fifth_first_second=$(($fifth_first_second + 1))
                else
                    fifth_first_third=$(($fifth_first_third + 1))
                fi
            fi
        else
            if [ $flows -le 8000 ]; then
                fifth_second_first=$(($fifth_second_first + 1))
            else
                if [ $flows -le 15000 ]; then
                    fifth_second_second=$(($fifth_second_second + 1))
                else
                    fifth_second_third=$(($fifth_second_third + 1))
                fi

            fi
        fi
    fi
done

echo "    \begin{table}[]"
echo "        \centering"
echo "        \begin{tabular}{|c|c|c|c|c|}"
echo "             \hline \#nodes & \#links & \#flows & Quantity & Group Name \\\\ \hline"
echo "\multirow{6}{*}{1-30}"
echo "             & \multirow{3}{*}{1-25} & 1-12 & $first_first_first & First \\\\ \cline{3-5}& & 13-25 & $first_first_second & Second \\\\ \cline{3-5} & & 26- & $first_first_third & Third \\\\ \cline{2-5}"
echo "             & \multirow{3}{*}{25-} & 1-60 & $first_second_first & Fourth \\\\ \cline{3-5}& & 60-90 & $first_second_second & Fifth \\\\ \cline{3-5} & & 90- & $first_second_third & Sixth \\\\ \hline"
echo "\multirow{6}{*}{30-60}"
echo "             & \multirow{3}{*}{1-75} & 1-150 & $second_first_first & Seventh \\\\ \cline{3-5}& & 151-230 & $second_first_second & Eighth \\\\ \cline{3-5} & & 231- & $second_first_third & Ninth \\\\ \cline{2-5}"
echo "             & \multirow{3}{*}{76-} & 1-325 & $second_second_first & Tenth \\\\ \cline{3-5}& & 326-500 & $second_second_second & Eleventh \\\\ \cline{3-5} & & 501- & $second_second_third & Twelfth \\\\ \hline"
echo "\multirow{6}{*}{60-90}"
echo "             & \multirow{3}{*}{1-125} & 1-500 & $third_first_first & Thirteenth \\\\ \cline{3-5}& & 501-800 & $third_first_second & Fourteenth \\\\ \cline{3-5} & & 801- & $third_first_third & Fifteenth \\\\ \cline{2-5}"
echo "             & \multirow{3}{*}{126-} & 1-800 & $third_second_first & Sixteenth \\\\ \cline{3-5}& & 801-1200 & $third_second_second & Seventeenth \\\\ \cline{3-5} & & 1201- & $third_second_third & Eighteenth \\\\ \hline "
echo "\multirow{6}{*}{90-130}"
echo "             & \multirow{3}{*}{1-195} & 1-1000 & $fourth_first_first & Nineteenth \\\\ \cline{3-5}& & 1001-1900 & $fourth_first_second & Twentieth \\\\ \cline{3-5} & & 1901- & $fourth_first_third & Twenty First \\\\ \cline{2-5}"
echo "             & \multirow{3}{*}{196-} & 1-1800 & $fourth_second_first & Twenty Second \\\\ \cline{3-5}& & 1801-2700 & $fourth_second_second & Twenty Third \\\\ \cline{3-5} & & 2701- & $fourth_second_third & Twenty Fourth \\\\ \hline"
echo "\multirow{6}{*}{130-}" 
echo "             & \multirow{3}{*}{1-300} & 1-2750 & $fifth_first_first & Twenty Fifth \\\\ \cline{3-5}& & 2751-4300 & $fifth_first_second & Twenty Sixth \\\\ \cline{3-5} & & 4301- & $fifth_first_third & Twenty Seventh \\\\ \cline{2-5}"
echo "             & \multirow{3}{*}{301-} & 1-8000 & $fifth_second_first & Twenty Eighth \\\\ \cline{3-5}& & 8001-15000 & $fifth_second_second & Twenty Ninth \\\\ \cline{3-5} & & 15001- & $fifth_second_third & Thirtieth \\\\ \hline"
echo "        \end{tabular}"
echo "        \caption{Solution Groups}"
echo "        \legend{Source: The Authors}"
echo "        \label{tab:results-short}"
echo "    \end{table}"