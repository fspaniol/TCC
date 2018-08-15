package main

import (
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
	mapaX map[int][]x
)

func main() {
	sol, err := parser.Transform(fmt.Sprintf("glpk/%s/%s.sol", os.Args[1], os.Args[1]))
	if err != nil {
		fmt.Println(err)
		return
	}
	mapaX = make(map[int][]x)

	for _, v := range sol.Variables.Variable {
		switch v.Name[0] {
		case 'X':
			src := strings.Split(v.Name[2:len(v.Name)-1], ",")[0]
			dst := strings.Split(v.Name[2:len(v.Name)-1], ",")[1]
			flow, _ := strconv.Atoi(strings.Split(v.Name[2:len(v.Name)-1], ",")[2])
			val, _ := strconv.Atoi(v.Value)
			newX := x{
				src: src,
				dst: dst,
			}

			if val == 1 {
				mapaX[flow] = append(mapaX[flow], newX)
			}
		}
	}

	for i := range mapaX {
		fmt.Printf("Flow %v: %v\n", i, mapaX[i])
	}
}
