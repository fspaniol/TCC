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
	compactSolution int
	compactTime     float32
	compactGap      float32
	vrpSolution     int
	vrpTime         float32
	vrpGap          float32
	lowerSolution   int
	lowerTime       float32
	lowerGap        float32
	lower2Solution  int
	lower2Time      float32
	lower2Gap       float32
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
		scanner.Scan()
		compactTime, _ := strconv.ParseFloat(scanner.Text(), 32)
		scanner.Scan()
		compactGap, _ := strconv.ParseFloat(scanner.Text(), 32)
		if compactTime < 3000 {
			compactGap = 0.00
		}
		scanner.Scan()
		vrpTime, _ := strconv.ParseFloat(scanner.Text(), 32)
		scanner.Scan()
		vrpGap, _ := strconv.ParseFloat(scanner.Text(), 32)
		if vrpTime < 3000 {
			vrpGap = 0.00
		}
		scanner.Scan()
		lowerTime, _ := strconv.ParseFloat(scanner.Text(), 32)
		scanner.Scan()
		lowerGap, _ := strconv.ParseFloat(scanner.Text(), 32)
		if lowerTime < 3000 {
			lowerGap = 0.00
		}
		scanner.Scan()
		lower2Time, _ := strconv.ParseFloat(scanner.Text(), 32)
		scanner.Scan()
		lower2Gap, _ := strconv.ParseFloat(scanner.Text(), 32)
		if lower2Time < 3000 {
			lower2Gap = 0.00
		}

		solCompact, err := getSolution(fmt.Sprintf("networks/%s/standard/solution.sol", f.Name()))
		if err != nil {
			solCompact = 0
		}

		solVrp, err := getSolution(fmt.Sprintf("networks/%s/vrp/solution.sol", f.Name()))
		if err != nil {
			solVrp = 0
		}

		solLower, err := getSolution(fmt.Sprintf("networks/%s/lower/solution.sol", f.Name()))
		if err != nil {
			solLower = 0
		}

		solLower2, err := getSolution(fmt.Sprintf("networks/%s/lower2/solution.sol", f.Name()))
		if err != nil {
			solLower2 = 0
		}

		s := scenario{
			nodes:           nodes,
			links:           links,
			flows:           flows,
			compactSolution: solCompact,
			compactTime:     float32(compactTime),
			compactGap:      float32(compactGap),
			vrpSolution:     solVrp,
			vrpTime:         float32(vrpTime),
			vrpGap:          float32(vrpGap),
			lowerSolution:   solLower,
			lowerTime:       float32(lowerTime),
			lowerGap:        float32(lowerGap),
			lower2Solution:  solLower2,
			lower2Time:      float32(lower2Time),
			lower2Gap:       float32(lower2Gap),
		}

		sortEntry(s)

		file.Close()
	}
}

func print() {
	for i := range scenarios {
		for j := range scenarios[i] {
			for k := range scenarios[i][j] {
				// fmt.Printf("%v %v %v: %v \n", i, j, k, len(scenarios[i][j][k]))
				for _, x := range scenarios[i][j][k] {
					fmt.Println(x)
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
