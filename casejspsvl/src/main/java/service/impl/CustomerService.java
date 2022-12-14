package service.impl;

import model.Customer;
import model.Employee;
import repository.ICustomerRepository;
import repository.impl.CustomerRepository;
import service.ICustomerService;

import java.util.List;

public class CustomerService implements ICustomerService {
    CustomerRepository customerRepository = new CustomerRepository();
    @Override
    public List<Customer> showCustomerList() {
        return customerRepository.showCustomerList();
    }

    @Override
    public void addNewCustomer(Customer customer) {
        customerRepository.addNewCustomer(customer);
    }

    public void deleteCustomer(int id) {
        customerRepository.deleteCustomer(id);
    }

    @Override
    public Customer findById(int id) {
        for (Customer customer:customerRepository.showCustomerList()
             ) {
            if(customer.getId()==id){
                return customer;
            }
        }
        return null;
    }

    @Override
    public void editCustomer(Customer customer) {
        customerRepository.editCustomer(customer);
    }
}
