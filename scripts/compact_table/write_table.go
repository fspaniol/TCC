package main

import "fmt"

const (

	// Size of multirow
	sizeRow = 6
)

func writeTable() {
	// top header
	fmt.Println("\\begin{table}[]")
	fmt.Println("\\centering")
	fmt.Println("\\begin{tabular}{|c|c|c|c|c|}")
	fmt.Println("\\hline \\#nodes & \\#links & \\#flows & Quantity & Group Name \\\\ \\hline")

	for i := range scenarios {
		fmt.Printf("\\multirow{%v}{*}{1-%v}\n", sizeRow, divisions[i][0])
		fmt.Printf("& \\multirow{3}{*}{1-%v} & -%v & %v & %s \\\\ \\cline{3-5}& & -%v & %v & %s \\\\ \\cline{3-5} & & %v- & %v & %s \\\\ \\cline{2-5} \n", divisions[i][1], divisions[i][2], len(scenarios[i][0][0]), fmt.Sprintf("net-%v-%v-%v", divisions[i][0], divisions[i][1], divisions[i][2]), divisions[i][3], len(scenarios[i][0][1]), fmt.Sprintf("net-%v-%v-%v", divisions[i][0], divisions[i][1], divisions[i][3]), divisions[i][3]+1, len(scenarios[i][0][2]), fmt.Sprintf("net-%v-%v-top", divisions[i][0], divisions[i][1]))
		fmt.Printf("& \\multirow{3}{*}{%v-} & -%v & %v & %s \\\\ \\cline{3-5}& & -%v & %v & %s \\\\ \\cline{3-5} & & %v- & %v & %s \\\\ \\hline \n", divisions[i][1]+1, divisions[i][4], len(scenarios[i][1][0]), fmt.Sprintf("net-%v-top-%v", divisions[i][0], divisions[i][4]), divisions[i][5], len(scenarios[i][1][1]), fmt.Sprintf("net-%v-top-%v", divisions[i][0], divisions[i][5]), divisions[i][5]+1, len(scenarios[i][1][2]), fmt.Sprintf("net-%v-top-top", divisions[i][0]))
	}

	// bottom header
	fmt.Println("\\end{tabular}")
	fmt.Println("\\caption{Solution Groups}")
	fmt.Println("\\legend{Source: The Authors}")
	fmt.Println("\\label{tab:results-short}")
	fmt.Println("\\end{table}")
}
