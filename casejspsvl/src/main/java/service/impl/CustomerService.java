package service.impl;

import model.Customer;
import repository.ICustomerRepository;
import repository.impl.CustomerRepository;
import service.ICustomerService;

import java.util.List;

public class CustomerService implements ICustomerService {
    CustomerRepository CustomerRepository = new CustomerRepository();
    @Override
    public List<Customer> showCustomerList() {
        return CustomerRepository.showCustomerList();
    }

    @Override
    public void addNewCustomer(Customer customer) {
        CustomerRepository.addNewCustomer(customer);
    }
}
