package service;

import model.Employee;

import java.util.List;

public interface IEmployeeService {
    List<Employee> showEmployeeList();
    void addEmployee(Employee employee);
}
