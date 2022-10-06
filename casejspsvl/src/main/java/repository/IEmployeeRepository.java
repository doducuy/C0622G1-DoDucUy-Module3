package repository;

import model.Employee;

import java.util.List;

public interface IEmployeeRepository {
    List<Employee> showEmployeeList();
    void addEmployee(Employee employee);
}
