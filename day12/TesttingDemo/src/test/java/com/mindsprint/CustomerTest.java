package com.mindsprint;

import com.mindsprint.project.models.Customers;
import com.mindsprint.project.service.CustomerService;
import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;

import java.util.List;

public class CustomerTest {
    static CustomerService service;
    @BeforeAll
    public static void setup() {
        service = new CustomerService();
    }
    @AfterAll
    public static void tearDown() {
        service = null;
    }
    @Test
    public void addCustomer() {
        Customers result = service.addNewCustomer(new Customers(1,"alice","IN"));
        Assertions.assertEquals("alice", result.getName());
    }
    @Test
    public void getAll() {
        List<Customers> result = service.getAllCustomers();
        Assertions.assertEquals(3, result.size());
    }
}
