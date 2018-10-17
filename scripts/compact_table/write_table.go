package main

import "fmt"

func writeTable() {
	// top header
	fmt.Println("\\begin{landscape}")
	fmt.Println("\\begin{table}[]")
	fmt.Println("\\centering")
	fmt.Println("\\begin{tabular}{|c|c|c|c|c|c|c|c|c|c|c|c|c|}")
	fmt.Println("\\hline \\#nodes & \\#links & \\#flows & Quantity & \\multicolumn{3}{c|}{Compact} & \\multicolumn{3}{c|}{VRP} & \\multicolumn{3}{c|}{Lower Bound} \\\\ \\hline")
	fmt.Println("& & & & Solution & Time & Gap & Solution & Time & Gap & Solution & Time & Gap \\\\ \\hline")

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

				fmt.Printf("& %s & %v & %s \\\\ \\cline{3-13}\n", val, len(k), getSols(k))
			}
			fmt.Println("\\cline{2-13}")
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
	var avgCompact, avgVRP, avgLower float32
	var sums [4]int
	counter := 0

	for _, i := range s {
		sums[0] += i.compactSolution
		if i.vrpSolution != 0 {
			sums[1] += i.vrpSolution
			counter++
		}
		sums[2] += i.lowerSolution
		sums[3] += i.lower2Solution
	}

	avgCompact = float32(sums[0]) / float32(len(s))
	avgVRP = float32(sums[1]) / float32(counter)
	avgLower = float32(sums[2]) / float32(len(s))
	//avgLower2 = float32(sums[3]) / float32(len(s))

	if counter > 0 {
		return fmt.Sprintf("%.1f & 0 & 0 & %.1f & 0 & 0 & %.1f & 0 & 0", avgCompact, avgVRP, avgLower)
	}

	return fmt.Sprintf("%.1f & 0 & 0 & - & 0 & 0 & %.1f & 0 & 0", avgCompact, avgLower)
}
