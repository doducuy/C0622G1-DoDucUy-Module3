package repository.impl;

import model.Employee;
import repository.IEmployeeRepository;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class EmployeeRepository implements IEmployeeRepository {
    private String jdbcURL = "jdbc:mysql://localhost:3306/case_study_jspsvl";
    private String jdbcUsername = "root";
    private String jdbcPassword = "cyncyn12";

    private static final String INSERT_EMPLOYEE_SQL = "INSERT INTO employee (name,date_of_birth,id_card,salary,phone_number,email,address,position_id,education_degree_id,division_id,username) VALUES (?,?,?,?,?,?,?,?,?,?,?);";
    private static final String SELECT_EMPLOYEE_BY_ID = "select * from employee where id =?";
//    private static final String SELECT_USER_BY_COUNTRY = "select * from users where country like ?";
    private static final String SELECT_ALL_EMPLOYEE = "select * from employee;";
    private static final String DELETE_EMPLOYEE_SQL = "delete from employee where id = ?;";
    private static final String UPDATE_EMPLOYEE_SQL = "update employee set name = ?,date_of_birth= ?, id_card =?, salary=?, phone_number=?, email=? , address=?, position_id=?, education_degree_id=?,division_id=?, username=? where id = ?;";
//    private static final String SORT_NAME = "select * from users order by name;";

    public EmployeeRepository() {
    }

    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return connection;
    }
    @Override
    public List<Employee> showEmployeeList() {
        List<Employee> employeeList = new ArrayList<>();
        Connection connection = getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement(SELECT_ALL_EMPLOYEE);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String dateOfBirth = String.valueOf(rs.getDate("date_of_birth"));
                String idCard = rs.getString("id_card");
                double salary = rs.getDouble("salary");
                String phoneNumber = rs.getString("phone_number");
                String email = rs.getString("email");
                String address = rs.getString("address");
                int positionId = rs.getInt("position_id");
                int educationDegreeId = rs.getInt("education_degree_id");
                int divisionId = rs.getInt("division_id");
                String username = rs.getString("username");
                employeeList.add(new Employee(id,name,dateOfBirth,idCard,salary,phoneNumber,email,address,positionId,educationDegreeId,divisionId,username));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return employeeList;
    }

    @Override
    public void addEmployee(Employee employee) {
        Connection connection = getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement(INSERT_EMPLOYEE_SQL);
            ps.setString(1,employee.getName());
            ps.setString(2,  employee.getDateOfBirth());
            ps.setString(3,employee.getIdCard());
            ps.setDouble(4,employee.getSalary());
            ps.setString(5,employee.getPhoneNumber());
            ps.setString(6, employee.getEmail());
            ps.setString(7,employee.getAddress());
            ps.setInt(8,employee.getPositionId());
            ps.setInt(9, employee.getEducationDegreeId());
            ps.setInt(10, employee.getDivisionId());
            ps.setString(11,employee.getUsername());
            ps.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    public void deleteEmployee(int id) {
        Connection connection = getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement(DELETE_EMPLOYEE_SQL);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    public void editEmloyee(Employee employee) {
        Connection connection = getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement(UPDATE_EMPLOYEE_SQL);
            ps.setString(1,employee.getName());
            ps.setString(2,  employee.getDateOfBirth());
            ps.setString(3,employee.getIdCard());
            ps.setDouble(4,employee.getSalary());
            ps.setString(5,employee.getPhoneNumber());
            ps.setString(6, employee.getEmail());
            ps.setString(7,employee.getAddress());
            ps.setInt(8,employee.getPositionId());
            ps.setInt(9, employee.getEducationDegreeId());
            ps.setInt(10, employee.getDivisionId());
            ps.setString(11,employee.getUsername());
            ps.setInt(12,employee.getId());
            ps.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    public Employee findById(int id) {
        Connection connection =getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement(UPDATE_EMPLOYEE_SQL);

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }

}
