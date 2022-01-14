package com.jforce.servicec.controller;

import com.jforce.servicec.model.Customers;
import com.jforce.servicec.service.CustomerService;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class CustomerController {
    private final CustomerService customerService;

    public CustomerController(CustomerService customerService) {
        this.customerService = customerService;
    }

    @GetMapping(value = "/customers", produces = MediaType.APPLICATION_XML_VALUE)
    public Customers findCustomers() {

        return customerService.getCustomers();
    }
}
