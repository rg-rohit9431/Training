package com.mindsprint.project.dao;

import com.mindsprint.project.models.Customers;

import java.util.ArrayList;
import java.util.List;

public class CustomerDaoImpl implements CustomerDao{
    private List<Customers> list = null;

    public CustomerDaoImpl() {
        list = new ArrayList<>();
        list.add(new Customers(1,"alex","US"));
        list.add(new Customers(2,"Bob","NYC"));
        list.add(new Customers(3,"Chad","UK"));
    }

    @Override
    public Customers addNewCustomer(Customers customer) {
        list.add(customer);
        return customer;
    }

    @Override
    public Customers getNewCustomer(int id) {
        return null;
    }

    @Override
    public List<Customers> getAllCustomers() {
        return list;
    }

    @Override
    public boolean deleteCustomer(int id) {
        return false;
    }

    @Override
    public boolean updateCustomer(int id, String address) {
        return false;
    }
}
