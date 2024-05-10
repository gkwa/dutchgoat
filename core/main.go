package core

import (
	"fmt"
	"os"

	"cuelang.org/go/cue"
	"cuelang.org/go/cue/cuecontext"
	"cuelang.org/go/cue/load"
)

func Run() {
	ctx := cuecontext.New()

	configPath := "templates.cue"
	instances := load.Instances([]string{configPath}, nil)
	if len(instances) == 0 {
		fmt.Printf("Failed to load configuration file: %s\n", configPath)
		os.Exit(1)
	}

	value := ctx.BuildInstance(instances[0])
	if value.Err() != nil {
		fmt.Println("Error:", value.Err())
		return
	}

	iter, err := value.Fields(cue.Definitions(true))
	if err != nil {
		fmt.Println("Error:", err)
		return
	}

	for iter.Next() {
		section := iter.Value()

		var templates []map[string]interface{}
		err := section.LookupPath(cue.ParsePath("templates")).Decode(&templates)
		if err != nil {
			fmt.Printf("Error decoding templates: %v\n", err)
			continue
		}

		for _, t := range templates {
			fmt.Printf("template: %s:\npath:%s\n\n", t["template"], t["path"])
		}
		fmt.Println()
	}
}
