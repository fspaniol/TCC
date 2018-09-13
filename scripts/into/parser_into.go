package main

import (
	"container/list"
	"fmt"
	"io/ioutil"
	"math"
	"os"
	"sort"
	"strconv"
	"strings"

	"github.com/fspaniol/cplexparser"
)

type link struct {
	src    string
	dst    string
	weight int
}

const (
	maxWeight = 5
)

var (
	links map[string]map[string]int

	// groups maps the flows to their own list of execution
	groups map[int]*list.List

	// breaks maps whether a flow gets broken in a node
	breaks map[int]map[string]bool

	// flag that controls whether its the first C
	first bool

	// flag that controls if bugs were found
	clean = true
)

func handleX(name string, value string) {
	valueFloat, _ := strconv.ParseFloat(value, 32)
	val := math.Round(valueFloat)
	if val == 1 {
		arr := strings.Split(name[2:len(name)-1], ",")
		src := arr[0]
		dst := arr[1]
		flow, _ := strconv.Atoi(arr[2])
		newLink := link{
			src:    src,
			dst:    dst,
			weight: 0,
		}

		// Update the struct saying that such node is covered
		links[src][dst]++

		if groups[flow] == nil {
			groups[flow] = list.New()
		}
		i := groups[flow].Front()
		for i != nil {
			elem := i.Value.(link)
			if newLink.src == elem.dst {
				groups[flow].InsertAfter(newLink, i)
				break
			} else {
				if newLink.dst == elem.src {
					groups[flow].InsertBefore(newLink, i)
					break
				}
			}
			i = i.Next()
		}
		if i == nil {
			groups[flow].PushBack(newLink)
		}
	}
}

func reorganizeX(flow int) {
	i := groups[flow].Front()
	for i != nil {
		j := i.Next()
		elemI := i.Value.(link)
		for j != nil {
			elemJ := j.Value.(link)
			if elemJ.dst == elemI.src {
				groups[flow].MoveBefore(j, i)
				break
			}
			if elemI.dst == elemJ.src && i.Next() != j {
				groups[flow].MoveAfter(j, i)
				j = i
			}
			j = j.Next()
		}
		if j == nil {
			i = i.Next()
		} else {
			i = groups[flow].Front()
		}
	}
}

func handleY(name string, value string) {
	valueFloat, _ := strconv.ParseFloat(value, 32)
	val := math.Round(valueFloat)
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

func handleC(name string, value string) {
	if first == true {
		first = false
		for i := range groups {
			reorganizeX(i)
		}
	}
	valueFloat, _ := strconv.ParseFloat(value, 32)
	val := int(math.Round(valueFloat))
	if val > 0 {
		arr := strings.Split(name[2:len(name)-1], ",")
		flow, _ := strconv.Atoi(arr[0])
		src := arr[1]

		if val > maxWeight {
			clean = false
			fmt.Printf("Bug Found! Flow %v has weight %v at node %v, which is higher than the max value %v", flow, val, src, maxWeight)
		}

		i := groups[flow].Front()
		j := i.Value.(link)
		for src != j.src {
			i = i.Next()
			j = i.Value.(link)
		}
		j.weight = val
		i.Value = j

		if i.Prev() == nil || breaks[flow][i.Prev().Value.(link).src] {
			// its the first, the weight has to be 0
			if val != 0 {
				// Have to check that if it's the first its 0
				// If it's not the first, it's the previous +1
				if i.Prev() == nil {
					//fmt.Printf("Might not be a bug! The current weight for node %v on flow %v is %v, it should be 0\n", src, flow, val)
				} else {
					fmt.Printf("Possible Bug Found! The current weight for node %v on flow %v is %v, it should be 0\n", src, flow, val)
				}
			}

		} else {
			// the weight should be the last one plus one
			if val != i.Prev().Value.(link).weight+1 {
				clean = false
				fmt.Printf("Bug Found! The weight for %v on flow %v should be %v, it currently is %v\n", src, flow, i.Prev().Value.(link).weight+1, val)
			}

		}

	}

}

func output() {
	var keys []int
	for i := range groups {
		keys = append(keys, i)
	}
	sort.Ints(keys)
	for _, i := range keys {
		fmt.Printf("Flow %v: ", i)
		j := groups[i].Front()
		for j != nil {
			elem := j.Value.(link)
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

func fillLinks() {
	dat, err := ioutil.ReadFile(fmt.Sprintf("networks/%s/%s-links.txt", os.Args[1], os.Args[1]))
	if err != nil {
		fmt.Println(err)
	}
	// Get the nodes
	lines := strings.Split(string(dat), "\n")
	numbers := make([]string, 0)
	for _, v := range lines {
		n := strings.Split(v, " ")
		for _, i := range n {
			val, _ := strconv.Atoi(i)
			if val != 0 {
				numbers = append(numbers, i)
			}
		}
	}

	// Put them on an array
	for i := 0; i < len(numbers); i += 2 {
		if links[numbers[i]] == nil {
			links[numbers[i]] = make(map[string]int)
		}
		links[numbers[i]][numbers[i+1]] = 0
	}
}

func checkAllNodes() {
	for i, k := range links {
		for j, l := range k {
			if l != 1 {
				clean = false
				fmt.Printf("Bug Found! Link (%v,%v) was covered by %v flows\n", i, j, l)
			}
		}
	}
}

// Checks whether all dispatches are correctly being handled
func checkDispatches() {
	for k, i := range groups {
		node := i.Front()
		for node.Next() != nil {
			// Check if there's a break in flow, that there needs to be a dispatch
			if node.Value.(link).dst != node.Next().Value.(link).src {
				if !breaks[k][node.Value.(link).src] {
					clean = false
					fmt.Printf("Bug Found! Node %v of flow %v is not dispatching!\n", node.Value.(link).src, k)
				}
			}
			node = node.Next()
		}

		// the last one of the group has to be dispatched
		if !breaks[k][node.Value.(link).src] {
			clean = false
			fmt.Printf("Bug Found! The last node of flow %v is not dispatching!\n", k)
		}
	}
}

func main() {
	sol, err := parser.Transform(fmt.Sprintf("networks/%s/standard/solution.sol", os.Args[1]))
	if err != nil {
		fmt.Println(err)
		return
	}

	groups = make(map[int]*list.List)
	breaks = make(map[int]map[string]bool)
	links = make(map[string]map[string]int)
	first = true

	fillLinks()

	for _, v := range sol.Variables.Variable {
		switch v.Name[0] {
		case 'X':
			handleX(v.Name, v.Value)
		case 'Y':
			handleY(v.Name, v.Value)
		case 'C':
			handleC(v.Name, v.Value)
		}
	}

	checkAllNodes()
	checkDispatches()

	if clean {
		fmt.Println("OKAY")
	}

	// valueFloat, _ := strconv.ParseFloat(sol.Header.ObjectiveValue, 32)
	// val := math.Round(valueFloat)
	// fmt.Printf("Number of groups: %v\n", val)
	// output()
}
