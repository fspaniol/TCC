package main

import (
	"log"
	"bufio"
	"os"
	"strconv"
	"strings"
)

func main() {
	fileReader, err := os.Open("simple.txt")
	if err != nil {
		log.Println(err)
	}
	file := bufio.NewReader(fileReader)
	vertices, err := file.ReadString('\n')
	if err != nil {
		log.Println(err)
	}
	flows, err := file.ReadString('\n')
	if err != nil {
		log.Println(err)
	}
	v, _ := strconv.Atoi(strings.Trim(vertices,"\n"))
	f, _ := strconv.Atoi(strings.Trim(flows, "\n"))
	log.Printf("Vertices: %d, Flows: %d\n", v, f)
}
