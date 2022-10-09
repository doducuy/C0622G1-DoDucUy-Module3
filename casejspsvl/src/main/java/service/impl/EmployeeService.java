package service.impl;

import model.Employee;
import repository.impl.EmployeeRepository;
import service.IEmployeeService;

import java.util.List;

public class EmployeeService implements IEmployeeService {
    EmployeeRepository employeeRepository = new EmployeeRepository();
    @Override
    public List<Employee> showEmployeeList() {
        return employeeRepository.showEmployeeList();
    }

    @Override
    public void addEmployee(Employee employee) {
        employeeRepository.addEmployee(employee);
    }

    @Override
    public void deleteEmployee(int id) {
        employeeRepository.deleteEmployee(id);
    }

    @Override
    public void editEmloyee(Employee employee) {
        employeeRepository.editEmloyee(employee);
    }

    @Override
    public Employee findById(int id) {
        for (Employee employee: employeeRepository.showEmployeeList()
             ) {
            if(employee.getId()==id){
                return  employee;
            }
        }
        return null;
    }

//    @Override
//    public List<Employee> findAll() {
//        return employeeRepository.findAll();
//    }
}
