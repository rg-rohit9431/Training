package com.mindsprint.project.service;

import com.mindsprint.project.dao.CustomerDao;
import com.mindsprint.project.dao.CustomerDaoImpl;
import com.mindsprint.project.models.Customers;

import java.util.List;

public class CustomerService {
    private CustomerDao dao;
    public CustomerService() {
        dao = new CustomerDaoImpl();
    }
    public Customers addNewCustomer(Customers customer) {
        return dao.addNewCustomer(customer);
    }
    public List<Customers> getAllCustomers() {
        return dao.getAllCustomers();
    }
}
