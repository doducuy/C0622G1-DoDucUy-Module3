package service;

import model.Customer;

import java.util.List;

public interface ICustomerService {
    List<Customer> showCustomerList();
    void addNewCustomer(Customer customer);
}
