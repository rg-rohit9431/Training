package com.mindsprint.project.dao;

import com.mindsprint.project.models.Customers;

import java.util.List;

public interface CustomerDao {
    public Customers addNewCustomer(Customers customer);
    public Customers getNewCustomer(int id);
    public List<Customers> getAllCustomers();
    public boolean deleteCustomer(int id);
    public boolean updateCustomer(int id,String address);


}
