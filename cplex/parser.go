package main

import (
	"container/list"
	"fmt"
	"os"
	"strconv"
	"strings"

	"github.com/fspaniol/TCC/parser"
)

type x struct {
	src string
	dst string
}

var (
	groups map[int]*list.List
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

func main() {
	sol, err := parser.Transform(fmt.Sprintf("glpk/%s/%s.sol", os.Args[1], os.Args[1]))
	if err != nil {
		fmt.Println(err)
		return
	}
	groups = make(map[int]*list.List)

	for _, v := range sol.Variables.Variable {
		switch v.Name[0] {
		case 'X':
			handleX(v.Name, v.Value)
		}
	}

	for i := range groups {
		fmt.Printf("Flow %v: ", i)
		j := groups[i].Front()
		for j != nil {
			fmt.Printf("%v ", j.Value)
			j = j.Next()
		}
		fmt.Println()
	}
}
