package main

import "fmt"

func writeTable() {
	// top header
	fmt.Println("\\begin{table}[]")
	fmt.Println("\\centering")
	fmt.Println("\\begin{tabular}{|c|c|c|c|c|}")
	fmt.Println("\\hline \\#nodes & \\#links & \\#flows & Quantity & Group Name \\\\ \\hline")

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
				fmt.Printf("& %s & %v & hehehe \\\\ \\cline{3-5}\n", val, len(k))
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

func getSols(i, j, k int) string {

	return ""
}
