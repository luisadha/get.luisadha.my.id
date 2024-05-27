

```go
package main

import (
	"fmt"
	"strings"
)

func selectBranch(patchName, input string) string {
	if patchName == "patch-1" {
		
		if strings.Contains(input, "fmway.me") {
			return strings.ReplaceAll(input, "fmway.me", "luisadha.my.id")
		}
	}
	
	return input
}

func main() {

	patchName := "patch-1"
	initialValue := "fmway.me"
	newValue := selectBranch(patchName, initialValue)
	fmt.Println(newValue)


}
```
