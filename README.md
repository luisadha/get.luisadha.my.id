

```go
package main

import (
	"fmt"
	"strings"
)

func selectBranch(branchName, input string) string {
	if branchName == "patch-1" {
		
		if strings.Contains(input, "fmway.me") {
			return strings.ReplaceAll(input, "fmway.me", "luisadha.my.id")
		}
	}
	
	return input
}

func main() {

	branchName := "patch-1"
	initialValue := "fmway.me"
	newValue := selectBranch(branchName, initialValue)
	fmt.Println(newValue)


}
```
