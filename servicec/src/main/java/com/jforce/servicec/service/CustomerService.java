package com.jforce.servicec.service;

import com.jforce.servicec.model.Customer;
import com.jforce.servicec.model.Customers;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

@Service
public class CustomerService {
    public Customers getCustomers() {
        List<Customer> customers = new ArrayList<>();
        Random rnd = new Random();
        for (int i = 0; i <5; i++) {
            Customer c = new Customer();
            c.setId(rnd.nextLong());
            c.setName("ExampleResp");
            c.setPopulation(1);
            customers.add(c);
        }

        Customers result = new Customers();
        result.setCustomers(customers);
        return result;
    }
}
