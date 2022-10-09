package repository.impl;

import model.Customer;
import repository.ICustomerRepository;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CustomerRepository implements ICustomerRepository {
    private String jdbcURL = "jdbc:mysql://localhost:3306/case_study_jspsvl";
    private String jdbcUsername = "root";
    private String jdbcPassword = "cyncyn12";

    private static final String INSERT_CUSTOMER_SQL = "INSERT INTO customer (customer_type_id,name,date_of_birth,gender,id_card,phone_number,email,address) VALUES (?,?,?,?,?,?,?,?);";
//    private static final String SELECT_EMPLOYEE_BY_ID = "select * from employee where id =?";
    //    private static final String SELECT_USER_BY_COUNTRY = "select * from users where country like ?";
    private static final String SELECT_ALL_CUSTOMER = "select * from customer;";
//    private static final String DELETE_EMPLOYEE_SQL = "delete from employee where id = ?;";
//    private static final String UPDATE_EMPLOYEE_SQL = "update employee set name = ?,date_of_birth= ?, id_card =?, salary=?, phone_number=?, email=? , address=?, position_id=?, education_degree_id=?,division_id=?, username=? where id = ?;";
//    private static final String SORT_NAME = "select * from users order by name;";


    public CustomerRepository() {
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
    public List<Customer> showCustomerList() {
        List<Customer> customerList = new ArrayList<>();
        Connection connection = getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement(SELECT_ALL_CUSTOMER);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                int id = rs.getInt("id");
                int customerTypeID = rs.getInt("customer_type_id");
                String name = rs.getString("name");
                String dateOfBirth = String.valueOf(rs.getDate("date_of_birth"));
                int gender = rs.getInt("gender");
                String idCard = rs.getString("id_card");
                String phoneNumber = rs.getString("phone_number");
                String email = rs.getString("email");
                String address = rs.getString("address");
                customerList.add(new Customer(id,customerTypeID,name,dateOfBirth,gender,idCard,phoneNumber,email,address));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return customerList;
    }

    @Override
    public void addNewCustomer(Customer customer) {
        Connection connection =getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement(INSERT_CUSTOMER_SQL);
            ps.setInt(1,customer.getCustomerTypeId());
            ps.setString(2,customer.getName());
            ps.setString(3,customer.getDateOfBirth());
            ps.setInt(4,customer.getGender());
            ps.setString(5,customer.getIdCard());
            ps.setString(6,customer.getPhoneNumber());
            ps.setString(7,customer.getEmail());
            ps.setString(8,customer.getAddress());
            ps.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

}
