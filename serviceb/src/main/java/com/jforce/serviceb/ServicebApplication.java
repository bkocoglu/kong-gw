package com.jforce.serviceb;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;

@SpringBootApplication
@RestController
public class ServicebApplication {

	public static void main(String[] args) {
		SpringApplication.run(ServicebApplication.class, args);
	}

	@GetMapping
	public Map<String, String> health() {
		Map<String, String> resp = new HashMap<>();
		resp.put("message", "Service B is healthy !");
		return resp;
	}
}
