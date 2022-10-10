package service;

import model.Customer;
import model.Employee;

import java.util.List;

public interface ICustomerService {
    List<Customer> showCustomerList();
    void addNewCustomer(Customer customer);
    void deleteCustomer(int id);
    Customer findById(int id);
    void editCustomer(Customer customer);
}
