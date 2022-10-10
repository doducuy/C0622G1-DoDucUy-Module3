package repository;

import model.Employee;

import java.util.List;

public interface IEmployeeRepository {
    List<Employee> showEmployeeList();
    void addEmployee(Employee employee);
    void deleteEmployee(int id);
    void editEmloyee(Employee employee);
    Employee findById(int id);
    List<Employee> searchEmployee(String searchName);
}
