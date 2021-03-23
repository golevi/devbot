package main

import "fmt"

var (
	version   = "0.1.0"
	commit    = ""
	date      = ""
	goVersion = ""
)

func main() {
	fmt.Println("---")
	fmt.Printf("Version:\t%s\nCommit:\t%s\nDate:\t%s\nGo Version:\t%s\n", version, commit, date, goVersion)
}
