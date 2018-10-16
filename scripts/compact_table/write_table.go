package main

import "fmt"

func writeTable() {
	// top header
	fmt.Println("\\begin{table}[]")
	fmt.Println("\\centering")
	fmt.Println("\\begin{tabular}{|c|c|c|c|c|c|c|c|c|}")
	fmt.Println("\\hline \\#nodes & \\#links & \\#flows & Quantity & Group Name & Compact Solution & VRP Solution & Lower Solution & Lower2 Solution\\\\ \\hline")

	for inI, i := range scenarios {
		// base of each nodes division
		fmt.Printf("\\multirow{%v}{*}{1-%v}\n", len(divisions[inI]), divisions[inI][0])

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

				fmt.Printf("& %s & %v & hehehe & %s \\\\ \\cline{3-5}\n", val, len(k), getSols(k))
			}
			fmt.Println("\\cline{2-5}")
		}

		fmt.Println("\\hline")
	}

	// bottom header
	fmt.Println("\\end{tabular}")
	fmt.Println("\\caption{Solution Groups}")
	fmt.Println("\\legend{Source: The Authors}")
	fmt.Println("\\label{tab:results-short}")
	fmt.Println("\\end{table}")
}

func getSols(s []scenario) string {
	var avgCompact, avgVRP, avgLower, avgLower2 float32
	var sums [4]int

	for _, i := range s {
		sums[0] += i.compactSolution
		sums[1] += i.vrpSolution
		sums[2] += i.lowerSolution
		sums[3] += i.lower2Solution
	}

	avgCompact = float32(sums[0]) / float32(len(s))
	avgVRP = float32(sums[1]) / float32(len(s))
	avgLower = float32(sums[2]) / float32(len(s))
	avgLower2 = float32(sums[3]) / float32(len(s))

	return fmt.Sprintf("%.1f & %.1f & %.1f & %.1f", avgCompact, avgVRP, avgLower, avgLower2)
}
