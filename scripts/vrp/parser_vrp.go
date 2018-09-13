package main

import (
	"fmt"
	"math"
	"os"
	"strconv"

	"github.com/fspaniol/cplexparser"
)

func main() {
	sol, err := parser.Transform(fmt.Sprintf("networks/%s/vrp/solution.sol", os.Args[1]))
	if err != nil {
		return
	}

	// for _, v := range sol.Variables.Variable {
	// 	fmt.Println(v)
	// 	//switch v.Name[0] {
	// 	//case 'X':
	// 	//	handleX(v.Name, v.Value)
	// }

	valueFloat, _ := strconv.ParseFloat(sol.Header.ObjectiveValue, 32)
	val := math.Round(valueFloat)
	fmt.Printf("Number of groups: %v\n", val)
}
