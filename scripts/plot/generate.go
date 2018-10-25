package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

type scenario struct {
	Solution float32
	Time     float32
}

var (
	values []scenario
	groups [10][]scenario
	nodes  [5]int
	links  [5]int
	flows  [5]int
)

func main() {
	// open the file
	f, _ := os.Open("tmp/plot.txt")

	scanner := bufio.NewScanner(f)
	scanner.Split(bufio.ScanWords)
	i := 0
	//s := scenario{}

	// Read the data from the file and fill the array
	for scanner.Scan() {
		// nodes
		if i == 0 {
			n, _ := strconv.Atoi(scanner.Text())
			//s.Solution = float32(math.Log(float64(v)))
			//s.Solution = float32(v)
			if n < 51 {
				nodes[0]++
			} else {
				if n < 101 {
					nodes[1]++
				} else {
					if n < 151 {
						nodes[2]++
					} else {
						if n < 251 {
							nodes[3]++
						} else {
							nodes[4]++
						}
					}
				}
			}

			i++
		} else {
			if i == 1 {
				i++
				l, _ := strconv.Atoi(scanner.Text())
				if l < 51 {
					links[0]++
				} else {
					if l < 101 {
						links[1]++
					} else {
						if l < 151 {
							links[2]++
						} else {
							if l < 251 {
								links[3]++
							} else {
								links[4]++
							}
						}
					}
				}
			} else {
				i = 0
				f, _ := strconv.Atoi(scanner.Text())
				if f < 101 {
					flows[0]++
				} else {
					if f < 501 {
						flows[1]++
					} else {
						if f < 1001 {
							flows[2]++
						} else {
							if f < 3001 {
								flows[3]++
							} else {
								flows[4]++
							}
						}
					}
				}

			}
			/*tmp, _ := strconv.ParseFloat(scanner.Text(), 32)
			s.Time = float32(tmp)
			//s.Time = float32(math.Log1p(tmp))
			values = append(values, s)*/
		}
	}

	/*
		// Sort the array
		sort.Slice(values, func(i, j int) bool {
			return values[i].Solution < values[j].Solution
		})

		// Calculate the boundaries between the groups
		// Duas ideias
		// Primeira, fazer uma distribuicao onde pega os valores entre os X intervalos
		// Segunda, pega os 10 primeiros valores
		// Dai os 10 segundos valores
		// E assim vai, agrupa a cada 10

		// Faz o log e imprime

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
		}*/

	fmt.Println(nodes)
	fmt.Println(links)
	fmt.Println(flows)
}
