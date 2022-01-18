package main

import (
	"encoding/json"
	"fmt"
	"github.com/Kong/go-pdk"
	"github.com/Kong/go-pdk/server"
	"strings"
)

type Config struct {
	CustomRequestHeaderValue string
	CustomRequestBodyValue   string
}

func New() interface{} {
	return &Config{}
}

type Req struct {
	Custom string
}

func (config Config) Access(kong *pdk.PDK) {
	body, _ := kong.Request.GetRawBody()

	fmt.Printf("Before -> %+v \n", body)

	_ = kong.Response.SetHeader("x-custom-header", config.CustomRequestHeaderValue)

	split := strings.Split(body, ">")

	newResponse := ""
	if len(split) > 0 {
		newResponse = split[0] + "><Custom>" + config.CustomRequestBodyValue + "</Custom>"

		for i := range split {
			if i > 0 {
				newResponse = newResponse + split[i] + ">"
			}
		}
	} else {
		req := &Req{Custom: config.CustomRequestBodyValue}
		JSONReq, err := json.Marshal(req)
		if err != nil {
			fmt.Println(err)
			return
		}
		newResponse = string(JSONReq)
	}

	fmt.Printf("Custom body -> %+v \n", newResponse)
	_ = kong.ServiceRequest.SetRawBody(newResponse)

	rawBody, _ := kong.Request.GetRawBody()

	fmt.Printf("After -> %+v \n", rawBody)
}

func main() {
	Version := "1.1"
	Priority := 999
	_ = server.StartServer(New, Version, Priority)
}
