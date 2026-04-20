package myapp;

import java.sql.*;
import java.util.*;
import java.io.Serializable;

public class MadilynStatesBean implements Serializable {

    private Connection conn;

    public MadilynStatesBean() throws Exception {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/CSD430",
                "student1",
                "pass"
        );
    }

    // Get all primary keys for dropdown
    public List<Integer> getAllStateIds() throws Exception {
        List<Integer> ids = new ArrayList<>();

        String sql = "SELECT state_id FROM madilynstatesdata";
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery(sql);

        while (rs.next()) {
            ids.add(rs.getInt("state_id"));
        }

        return ids;
    }

    // Get full record by ID
    public ResultSet getStateById(int id) throws Exception {
        String sql = "SELECT * FROM madilynstatesdata WHERE state_id = ?";
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setInt(1, id);
        return ps.executeQuery();
    }
}