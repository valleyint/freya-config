package main

import (
	"fmt"
	"os"
)

func SumUnicode(s string) int32 {
	var sum int32 = 0
	for _, r := range s {
		sum += r
	}
	return sum
}

func main() {
	if len(os.Args) < 2 {
		fmt.Println("Usage: go run main.go <string>")
		return
	}

	input := os.Args[1]
	fmt.Printf("Input: %s\nUnicode Sum: %d\n", input, SumUnicode(input))
}
