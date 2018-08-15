package main

import (
	"container/list"
	"fmt"
	"os"
	"strconv"
	"strings"

	"../parser"
)

type x struct {
	src string
	dst string
}

var (
	// groups maps the flows to their own list of execution
	groups map[int]*list.List

	// breaks maps whether a flow gets broken in a node
	breaks map[int]map[string]bool
)

func handleX(name string, value string) {
	val, _ := strconv.Atoi(value)
	if val == 1 {
		arr := strings.Split(name[2:len(name)-1], ",")
		src := arr[0]
		dst := arr[1]
		flow, _ := strconv.Atoi(arr[2])
		newX := x{
			src: src,
			dst: dst,
		}
		if groups[flow] == nil {
			groups[flow] = list.New()
		}
		i := groups[flow].Front()
		for i != nil {
			elem := i.Value.(x)
			if newX.src == elem.dst {
				groups[flow].InsertAfter(newX, i)
				break
			} else {
				if newX.dst == elem.src {
					groups[flow].InsertBefore(newX, i)
					break
				}
			}
			i = i.Next()
		}
		if i == nil {
			groups[flow].PushBack(newX)
		}
	}
}

func handleY(name string, value string) {
	val, _ := strconv.Atoi(value)
	if val == 1 {
		arr := strings.Split(name[2:len(name)-1], ",")
		src := arr[1]
		flow, _ := strconv.Atoi(arr[0])

		if breaks[flow] == nil {
			breaks[flow] = make(map[string]bool)
		}

		breaks[flow][src] = true
	}
}

func output() {
	for i := range groups {
		fmt.Printf("Flow %v: ", i)
		j := groups[i].Front()
		for j != nil {
			elem := j.Value.(x)
			fmt.Printf("%v ", j.Value)
			// This means that it delivers on such node
			if breaks[i][elem.src] {
				fmt.Println()
				if j.Next() != nil {
					fmt.Printf("Flow %v: ", i)
				}
			}
			j = j.Next()
		}
	}
}

func main() {
	sol, err := parser.Transform(fmt.Sprintf("networks/%s/%s.sol", os.Args[1], os.Args[1]))
	if err != nil {
		fmt.Println(err)
		return
	}
	groups = make(map[int]*list.List)
	breaks = make(map[int]map[string]bool)

	for _, v := range sol.Variables.Variable {
		switch v.Name[0] {
		case 'X':
			handleX(v.Name, v.Value)
		case 'Y':
			handleY(v.Name, v.Value)
		}
	}

	fmt.Printf("Number of groups: %v\n", sol.Header.ObjectiveValue)
	output()
}
