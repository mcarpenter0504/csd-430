/*
Madilyn Carpenter
4/26/2026
Assignment: Working with CRUD & JavBeans
Purpose: Create a UI that can intake user data, store it in a database, and return data from the database.
 */

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

    // Insert record into DB
    public void addState(String state_name, String abbreviation, String capital, double population_millions, String region) {
        try {
            String sql = "INSERT INTO madilynstatesdata (state_name, abbreviation, capital, population_millions, region) VALUES (?,?,?,?,?)";
            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setString(1, state_name);
            ps.setString(2, abbreviation);
            ps.setString(3, capital);
            ps.setDouble(4, population_millions);
            ps.setString(5, region);

            ps.executeUpdate();
        } catch(Exception e) {
            e.printStackTrace();
        }
    }

    // Get all state records
    public ResultSet getAllStates() {
        try {
            String sql = "SELECT * FROM madilynstatesdata";
            PreparedStatement ps = conn.prepareStatement(sql);
            return ps.executeQuery();

        } catch(Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}