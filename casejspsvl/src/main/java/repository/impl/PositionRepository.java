package repository.impl;

import model.Position;
import repository.IPositionRepository;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class PositionRepository implements IPositionRepository {
    private String jdbcURL = "jdbc:mysql://localhost:3306/case_study_jspsvl";
    private String jdbcUsername = "root";
    private String jdbcPassword = "cyncyn12";

    private static final String SELECT_ALL_POSITION = "select * from position;";

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
    public List<Position> showPosition() {
        List<Position> positionList =new ArrayList<>();
        Connection connection =getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement(SELECT_ALL_POSITION);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                int id = rs.getInt("id");
                String name = rs.getString("name");
                positionList.add(new Position(id,name));
            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return positionList;
    }

}
