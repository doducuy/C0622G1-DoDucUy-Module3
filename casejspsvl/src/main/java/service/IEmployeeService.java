package service;

import model.Employee;

import java.util.List;

public interface IEmployeeService {
    List<Employee> showEmployeeList();
    void addEmployee(Employee employee);
    void deleteEmployee(int id);
    void editEmloyee(Employee employee);
    Employee findById(int id);
    List<Employee> searchEmployee(String searchName);
}
