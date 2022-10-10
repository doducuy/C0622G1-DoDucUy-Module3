package repository;

import model.Customer;

import java.util.List;

public interface ICustomerRepository {
    List<Customer> showCustomerList();
    void addNewCustomer(Customer customer);
    void deleteCustomer(int id);
    void editCustomer(Customer customer);
}
