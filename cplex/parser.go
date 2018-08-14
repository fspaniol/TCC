package main

import (
	"encoding/xml"
	"fmt"
	"io/ioutil"
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

func main() {
	var v CPLEXSolution
	d, err := ioutil.ReadFile("../glpk/simple/simple.sol")
	if err != nil {
		fmt.Println("Deu ruim")
		return
	}

	err = xml.Unmarshal(d, &v)
	if err != nil {
		fmt.Printf("error: %v", err)
		return
	}

	for _, k := range v.Variables.Variable {
		fmt.Printf("Variable: %v\n", k)
	}
}
