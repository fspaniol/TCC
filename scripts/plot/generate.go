package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

type scenario struct {
	Solution float32
	Time     float32
}

var (
	values []scenario
	groups [10][]scenario
)

func main() {
	// open the file
	f, _ := os.Open("tmp/plot.txt")

	scanner := bufio.NewScanner(f)
	scanner.Split(bufio.ScanWords)
	i := 0
	s := scenario{}

	// Read the data from the file and fill the array
	for scanner.Scan() {
		if i == 0 {
			v, _ := strconv.Atoi(scanner.Text())
			s.Solution = float32(v)
			i++
		} else {
			i--
			tmp, _ := strconv.ParseFloat(scanner.Text(), 32)
			s.Time = float32(tmp)
			values = append(values, s)
		}
	}

	// Sort the array
	sort.Slice(values, func(i, j int) bool {
		return values[i].Solution < values[j].Solution
	})

	count := 0
	var sum float32
	var sumTime float32
	for _, sol := range values {
		sum += sol.Solution
		sumTime += sol.Time
		count++
		if count == 10 {
			fmt.Printf("%v %v\n", sum/10, sumTime/10)
			count = 0
			sum = 0
			sumTime = 0
		}
	}
}
