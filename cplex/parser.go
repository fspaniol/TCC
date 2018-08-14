package main

import (
	"encoding/xml"
	"fmt"
	"io/ioutil"
	"os"
	"strconv"
	"strings"
)

type CPLEXSolution struct {
	XMLName xml.Name `xml:"CPLEXSolution"`
	Text    string   `xml:",chardata"`
	Version string   `xml:"version,attr"`
	Header  struct {
		Text                 string `xml:",chardata"`
		ProblemName          string `xml:"problemName,attr"`
		SolutionName         string `xml:"solutionName,attr"`
		SolutionIndex        string `xml:"solutionIndex,attr"`
		ObjectiveValue       string `xml:"objectiveValue,attr"`
		SolutionTypeValue    string `xml:"solutionTypeValue,attr"`
		SolutionTypeString   string `xml:"solutionTypeString,attr"`
		SolutionStatusValue  string `xml:"solutionStatusValue,attr"`
		SolutionStatusString string `xml:"solutionStatusString,attr"`
		SolutionMethodString string `xml:"solutionMethodString,attr"`
		PrimalFeasible       string `xml:"primalFeasible,attr"`
		DualFeasible         string `xml:"dualFeasible,attr"`
		MIPNodes             string `xml:"MIPNodes,attr"`
		MIPIterations        string `xml:"MIPIterations,attr"`
		WriteLevel           string `xml:"writeLevel,attr"`
	} `xml:"header"`
	Quality struct {
		Text            string `xml:",chardata"`
		EpInt           string `xml:"epInt,attr"`
		EpRHS           string `xml:"epRHS,attr"`
		MaxIntInfeas    string `xml:"maxIntInfeas,attr"`
		MaxPrimalInfeas string `xml:"maxPrimalInfeas,attr"`
		MaxX            string `xml:"maxX,attr"`
		MaxSlack        string `xml:"maxSlack,attr"`
	} `xml:"quality"`
	LinearConstraints struct {
		Text       string `xml:",chardata"`
		Constraint []struct {
			Text  string `xml:",chardata"`
			Name  string `xml:"name,attr"`
			Index string `xml:"index,attr"`
			Slack string `xml:"slack,attr"`
		} `xml:"constraint"`
	} `xml:"linearConstraints"`
	Variables struct {
		Text     string `xml:",chardata"`
		Variable []struct {
			Text  string `xml:",chardata"`
			Name  string `xml:"name,attr"`
			Index string `xml:"index,attr"`
			Value string `xml:"value,attr"`
		} `xml:"variable"`
	} `xml:"variables"`
}

type x struct {
	a   int
	b   int
	k   int
	val int
}

type y struct {
	a   int
	k   int
	val int
}

type c struct {
	a   int
	k   int
	val int
}

func main() {
	arrX := make([]x, 0)
	arrY := make([]y, 0)
	arrC := make([]c, 0)
	var v CPLEXSolution
	d, err := ioutil.ReadFile(fmt.Sprintf("glpk/%s/%s.sol", os.Args[1], os.Args[1]))
	if err != nil {
		fmt.Println(err)
		return
	}

	err = xml.Unmarshal(d, &v)
	if err != nil {
		fmt.Println(err)
		return
	}

	for _, k := range v.Variables.Variable {
		switch k.Name[0] {
		case 'C':
			val1, _ := strconv.Atoi(strings.Split(k.Name[2:len(k.Name)-1], ",")[1])
			val2, _ := strconv.Atoi(strings.Split(k.Name[2:len(k.Name)-1], ",")[0])
			val3, _ := strconv.Atoi(k.Value)
			cc := c{
				a:   val1,
				k:   val2,
				val: val3,
			}

			arrC = append(arrC, cc)
		case 'X':
			val1, _ := strconv.Atoi(strings.Split(k.Name[2:len(k.Name)-1], ",")[0])
			val2, _ := strconv.Atoi(strings.Split(k.Name[2:len(k.Name)-1], ",")[1])
			val3, _ := strconv.Atoi(strings.Split(k.Name[2:len(k.Name)-1], ",")[2])
			val4, _ := strconv.Atoi(k.Value)
			xx := x{
				a:   val1,
				b:   val2,
				k:   val3,
				val: val4,
			}

			arrX = append(arrX, xx)
		case 'Y':
			val1, _ := strconv.Atoi(strings.Split(k.Name[2:len(k.Name)-1], ",")[1])
			val2, _ := strconv.Atoi(strings.Split(k.Name[2:len(k.Name)-1], ",")[0])
			val3, _ := strconv.Atoi(k.Value)
			yy := y{
				a:   val1,
				k:   val2,
				val: val3,
			}

			arrY = append(arrY, yy)
		}
	}

	fmt.Printf("%+v\n", arrX)
	fmt.Printf("%+v\n", arrY)
	fmt.Printf("%+v\n", arrC)
}
