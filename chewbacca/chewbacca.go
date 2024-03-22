package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func l(k, a, b int) int {
	if a == b {
		return 0
	}
	if a > b {
		return 1 + l(k, (a-1)/k, b)
	}
	return 1 + l(k, a, (b-1)/k)
}

func main() {
	// Read input from standard input
	reader := bufio.NewReader(os.Stdin)
	line, _ := reader.ReadString('\n')
	inputs := strings.Fields(line)
	_, _ = strconv.Atoi(inputs[0]) // Ignoring the first input

	k, _ := strconv.Atoi(inputs[1])
	q, _ := strconv.Atoi(inputs[2])

	// Process q queries
	for i := 0; i < q; i++ {
		line, _ := reader.ReadString('\n')
		values := strings.Fields(line)
		a, _ := strconv.Atoi(values[0])
		b, _ := strconv.Atoi(values[1])
		result := l(k, a-1, b-1)
		fmt.Println(result)
	}
}
