package main

import "fmt"

var (
	sums [30][4][3]float32
	avgs [30][4][3]float32
	i    = 0
)

func writeTable() {
	// top header
	fmt.Println("\\begin{landscape}")
	fmt.Println("\\thispagestyle{empty}")
	fmt.Println("\\begin{table}[]")
	fmt.Println("\\centering")
	fmt.Println("\\def\\arraystretch{0.9}")
	fmt.Println("\\setlength\\tabcolsep{4pt}")
	fmt.Println("\\begin{tabular}{l|l|l|ll|lll|lll|lll|lll}")
	fmt.Println("\\toprule \\#devices & \\#links & \\#flows & Group & \\#instances & \\multicolumn{3}{c|}{Cover} & \\multicolumn{3}{c|}{VRP} & \\multicolumn{3}{c|}{Lower} & \\multicolumn{3}{c}{Relax}\\\\")
	fmt.Println("& & & & & Sol & Time & CPLEX Gap & Sol & Time & CPLEX Gap & Sol & Time & $Gap_v$ & Sol & Time & $Gap_v$\\\\ \\midrule")
	count := 1
	for inI, i := range scenarios {
		// base of each nodes division
		var group string
		if inI == 0 {
			group = fmt.Sprintf("$1-%d$", divisions[inI][0])
		} else {
			if inI == len(divisions)-1 {
				group = fmt.Sprintf("$%d \\leq$", divisions[inI-1][0]+1)
			} else {
				group = fmt.Sprintf("$%d-%d$", divisions[inI-1][0]+1, divisions[inI][0])
			}
		}
		fmt.Printf("\\multirow{%v}{*}{%s}\n", len(divisions[inI]), group)

		for inJ, j := range i {
			// base of each links division
			var val string
			if inJ == len(scenarios[inI])-1 {
				val = fmt.Sprintf("$%v \\leq$", divisions[inI][1]+1)
			} else {
				val = fmt.Sprintf("$\\leq %v$", divisions[inI][1])
			}
			fmt.Printf("& \\multirow{%v}{*}{%s}\n", len(j), val)

			for inK, k := range j {
				var val string
				if inK == len(j)-1 {
					val = fmt.Sprintf("$%v \\leq$", divisions[inI][5]+1)
				} else {
					val = fmt.Sprintf("$\\leq %v$", divisions[inI][inK+(inJ*2)+2])
				}
				if inK != 0 {
					fmt.Print("& ")
				}

				fmt.Printf("& %s & %d & %v & %s \\\\\n", val, count, len(k), getSols(k))
				count++
			}
			fmt.Println("\\cline{2-3}")
		}
		fmt.Println("\\cline{1-3}")
	}

	// Averages
	fmt.Println("\\midrule")
	fmt.Printf("& & & & & %.1f & %.1f & %.1f &&&& %.1f & %.1f & %.1f & %.1f & %.1f & %.1f\\\\\n", findAvg(0, 0), findAvg(0, 1), findAvg(0, 2), findAvg(2, 0), findAvg(2, 1), findAvg(2, 2), findAvg(3, 0), findAvg(3, 1), findAvg(3, 2))

	fmt.Println("\\bottomrule")

	// bottom header
	fmt.Println("\\end{tabular}")
	fmt.Println("\\caption{Solution Groups}")
	fmt.Println("\\legend{Source: The Authors}")
	fmt.Println("\\label{tab:results-short}")
	fmt.Println("\\end{table}")
	fmt.Println("\\end{landscape}")
}

func getSols(s []scenario) string {
	counter := 0

	for _, j := range s {
		sums[i][0][0] += float32(j.compactSolution)
		sums[i][0][1] += j.compactTime
		sums[i][0][2] += j.compactGap

		if j.vrpSolution != 0 {
			sums[i][1][0] += float32(j.vrpSolution)
			sums[i][1][1] += j.vrpTime
			sums[i][1][2] += j.vrpGap
			counter++
		}

		sums[i][2][0] += float32(j.lowerSolution)
		sums[i][2][1] += j.lowerTime
		sums[i][2][2] += j.lowerGap

		sums[i][3][0] += float32(j.lower2Solution)
		sums[i][3][1] += j.lower2Time
		sums[i][3][2] += j.lower2Gap
	}

	for j := range sums[i] {
		div := float32(len(s))
		if j == 1 {
			div = float32(counter)
		}

		avgs[i][j][0] = sums[i][j][0] / div
		avgs[i][j][1] = sums[i][j][1] / div
		avgs[i][j][2] = sums[i][j][2] / div

	}

	// Lower bound gap
	avgs[i][2][2] = (sums[i][0][0] - sums[i][2][0]) / sums[i][0][0]
	avgs[i][3][2] = (sums[i][0][0] - sums[i][3][0]) / sums[i][0][0]
	avgs[i][2][2] *= 100
	avgs[i][3][2] *= 100

	defer func() {
		i++
	}()

	if counter > 0 {
		return fmt.Sprintf("%.1f & %.1f & %.1f & %.1f & %.1f & %.1f & %.1f & %.1f & %.1f & %.1f & %.1f & %.1f", avgs[i][0][0], avgs[i][0][1], avgs[i][0][2], avgs[i][1][0], avgs[i][1][1], avgs[i][1][2], avgs[i][2][0], avgs[i][2][1], avgs[i][2][2], avgs[i][3][0], avgs[i][3][1], avgs[i][3][2])
	}

	return fmt.Sprintf("%.1f & %.1f & %.1f & & & & %.1f & %.1f & %.1f & %.1f & %.1f & %.1f", avgs[i][0][0], avgs[i][0][1], avgs[i][0][2], avgs[i][2][0], avgs[i][2][1], avgs[i][2][2], avgs[i][3][0], avgs[i][3][1], avgs[i][3][2])
}

func findAvg(i, j int) float32 {
	var tmp float32
	for a := 0; a < 30; a++ {
		tmp += avgs[a][i][j]
	}
	return tmp / 30
}
