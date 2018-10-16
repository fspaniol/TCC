package main

import (
	"bufio"
	"fmt"
	"io/ioutil"
	"log"
	"math"
	"os"
	"strconv"

	parser "github.com/fspaniol/cplexparser"
)

type scenario struct {
	nodes           int
	links           int
	flows           int
	time            float32
	compactSolution int
	vrpSolution     int
	lowerSolution   int
	lower2Solution  int
	gap             float32
}

// depois tem que incluir o tempo, botando no arquivo info.txt

var (
	// files contains the list of all scenarios
	files []os.FileInfo

	// scenarios contains the list of all the solutions that we currently have
	scenarios [5][2][3][]scenario

	// The order is nodes links flow flow links flow flow
	divisions = [5][6]int{
		{30, 25, 12, 25, 60, 90},
		{60, 75, 150, 230, 325, 500},
		{90, 125, 500, 800, 800, 1200},
		{130, 195, 1000, 1900, 1800, 2700},
		{0, 300, 2750, 4300, 8000, 15000},
	}
)

func getSolution(path string) (int, error) {
	sol, err := parser.Transform(path)
	if err != nil {
		return 0, err
	}

	valCompact, _ := strconv.ParseFloat(sol.Header.ObjectiveValue, 32)
	return int(math.Round(valCompact)), nil
}

func sortEntry(s scenario) {
	i := 0
	var j int
	var k int
	// find node division
	for s.nodes > divisions[i][0] && i < 4 {
		i++
	}

	// find links division
	if s.links > divisions[i][1] {
		j = 4
	} else {
		j = 2
	}

	if s.flows <= divisions[i][j] {
		k = 0
	} else {
		if s.flows <= divisions[i][j+1] {
			k = 1
		} else {
			k = 2
		}
	}

	if j == 4 {
		j = 1
	} else {
		j = 0
	}

	scenarios[i][j][k] = append(scenarios[i][j][k], s)
}

func fillScenarios() {
	for _, f := range files {
		file, err := os.Open(fmt.Sprintf("./networks/%v/info.txt", f.Name()))
		if err != nil {
			log.Fatal(err)
		}

		scanner := bufio.NewScanner(file)
		scanner.Split(bufio.ScanWords)
		scanner.Scan()
		nodes, _ := strconv.Atoi(scanner.Text())
		scanner.Scan()
		links, _ := strconv.Atoi(scanner.Text())
		scanner.Scan()
		flows, _ := strconv.Atoi(scanner.Text())

		/*solCompact, err := getSolution(fmt.Sprintf("networks/%s/standard/solution.sol", f.Name()))
		if err != nil {
			continue
		}

		solVrp, err := getSolution(fmt.Sprintf("networks/%s/vrp/solution.sol", f.Name()))
		if err != nil {
			continue
		}

		solLower, err := getSolution(fmt.Sprintf("networks/%s/lower/solution.sol", f.Name()))
		if err != nil {
			continue
		}

		solLower2, err := getSolution(fmt.Sprintf("networks/%s/lower2/solution.sol", f.Name()))
		if err != nil {
			continue
		}*/

		s := scenario{
			nodes: nodes,
			links: links,
			flows: flows,
			time:  0,
			gap:   0,
		}

		sortEntry(s)

		file.Close()
	}
}

func print() {
	for i := range scenarios {
		for j := range scenarios[i] {
			for k := range scenarios[i][j] {
				fmt.Printf("%v %v %v: %v \n", i, j, k, len(scenarios[i][j][k]))
				for _, _ = range scenarios[i][j][k] {
				}
			}
		}
	}
}

func main() {
	var err error
	files, err = ioutil.ReadDir("./networks/")
	if err != nil {
		log.Fatal(err)
	}

	fillScenarios()

	//print()
	writeTable()

	return
}
