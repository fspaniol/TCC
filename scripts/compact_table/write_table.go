package main

import "fmt"

func writeTable() {
	// top header
	fmt.Println("\\begin{landscape}")
	fmt.Println("\\thispagestyle{empty}")
	fmt.Println("\\begin{table}[]")
	fmt.Println("\\centering")
	fmt.Println("\\begin{tabular}{|c|c|c|c|c|c|c|c|c|c|c|c|c|c|c|c|c|c|}")
	fmt.Println("\\hline \\#nodes & \\#links & \\#flows & Name & Quantity & \\multicolumn{3}{c|}{Cover} & \\multicolumn{4}{c|}{VRP} & \\multicolumn{3}{c|}{Lower Bound} & \\multicolumn{3}{c|}{Relax}\\\\ \\hline")
	fmt.Println("& & & & & Sol & Time & Gap & Sol & Time & Gap & Fraction & Sol & Time & Gap_v & Sol & Time & Gap_v\\\\ \\hline")
	count := 1
	for inI, i := range scenarios {
		// base of each nodes division
		var group string
		if inI == 0 {
			group = fmt.Sprintf("1-%d", divisions[inI][0])
		} else {
			if inI == len(divisions)-1 {
				group = fmt.Sprintf("%d-", divisions[inI-1][0]+1)
			} else {
				group = fmt.Sprintf("%d-%d", divisions[inI-1][0]+1, divisions[inI][0])
			}
		}
		fmt.Printf("\\multirow{%v}{*}{%s}\n", len(divisions[inI]), group)

		for inJ, j := range i {
			// base of each links division
			var val string
			if inJ == len(scenarios[inI])-1 {
				val = fmt.Sprintf("%v-", divisions[inI][1]+1)
			} else {
				val = fmt.Sprintf("-%v", divisions[inI][1])
			}
			fmt.Printf("& \\multirow{%v}{*}{%s}\n", len(j), val)

			for inK, k := range j {
				var val string
				if inK == len(j)-1 {
					val = fmt.Sprintf("%v-", divisions[inI][5]+1)
				} else {
					val = fmt.Sprintf("-%v", divisions[inI][inK+(inJ*2)+2])
				}
				if inK != 0 {
					fmt.Print("& ")
				}

				fmt.Printf("& %s & %s & %v & %s \\\\ \\cline{3-18}\n", val, fmt.Sprintf("Group\\_%d", count), len(k), getSols(k))
				count++
			}
			fmt.Println("\\cline{2-18}")
		}
		fmt.Println("\\hline")
	}

	// bottom header
	fmt.Println("\\end{tabular}")
	fmt.Println("\\caption{Solution Groups}")
	fmt.Println("\\legend{Source: The Authors}")
	fmt.Println("\\label{tab:results-short}")
	fmt.Println("\\end{table}")
	fmt.Println("\\end{landscape}")
}

func getSols(s []scenario) string {
	var sums [4][3]float32
	var avgs [4][3]float32
	counter := 0

	for _, i := range s {
		sums[0][0] += float32(i.compactSolution)
		sums[0][1] += i.compactTime
		sums[0][2] += i.compactGap

		if i.vrpSolution != 0 {
			sums[1][0] += float32(i.vrpSolution)
			sums[1][1] += i.vrpTime
			sums[1][2] += i.vrpGap
			counter++
		}

		sums[2][0] += float32(i.lowerSolution)
		sums[2][1] += i.lowerTime
		sums[2][2] += i.lowerGap

		sums[3][0] += float32(i.lower2Solution)
		sums[3][1] += i.lower2Time
		sums[3][2] += i.lower2Gap
	}

	for i := range sums {
		div := float32(len(s))
		if i == 1 {
			div = float32(counter)
		}

		avgs[i][0] = sums[i][0] / div
		avgs[i][1] = sums[i][1] / div
		avgs[i][2] = sums[i][2] / div

	}

	// Lower bound gap
	avgs[2][2] = (sums[0][0] - sums[2][0]) / sums[2][0]
	avgs[3][2] = (sums[0][0] - sums[3][0]) / sums[3][0]

	if counter > 0 {
		return fmt.Sprintf("%.1f & %.1f & %.1f & %.1f & %.1f & %.1f & %d / %d & %.1f & %.1f & %.1f & %.1f & %.1f & %.1f", avgs[0][0], avgs[0][1], avgs[0][2], avgs[1][0], avgs[1][1], avgs[1][2], counter, len(s), avgs[2][0], avgs[2][1], avgs[2][2], avgs[3][0], avgs[3][1], avgs[3][2])
	}

	return fmt.Sprintf("%.1f & %.1f & %.1f & - & - & - & - & %.1f & %.1f & %.1f & %.1f & %.1f & %.1f", avgs[0][0], avgs[0][1], avgs[0][2], avgs[2][0], avgs[2][1], avgs[2][2], avgs[3][0], avgs[3][1], avgs[3][2])
}
