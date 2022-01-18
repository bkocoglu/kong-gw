package main

import (
	"fmt"
	"github.com/Kong/go-pdk/server"
	"time"
)
import "github.com/Kong/go-pdk"

type Config struct {
	WaitTime int
}

func New() interface{} {
	return &Config{}
}

var requests = make(map[string]time.Time)

func (config Config) Access(kong *pdk.PDK) {
	_ = kong.Response.SetHeader("x-wait-time", fmt.Sprintf("%d seconds", config.WaitTime))
	_ = kong.Response.SetHeader("written-by", "Bilal")

	host, _ := kong.Request.GetHost()

	lastRequest, exists := requests[host]

	if exists && time.Now().Sub(lastRequest) < time.Duration(config.WaitTime)*time.Second {
		kong.Response.Exit(400, "Maximum request reached", make(map[string][]string))
	} else {
		requests[host] = time.Now()
	}
}

func main() {
	Version := "1.1"
	Priority := 1000
	_ = server.StartServer(New, Version, Priority)
}
