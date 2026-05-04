package myapp;

import java.sql.*;
import java.util.*;
import java.io.Serializable;

public class MadilynStatesBean implements Serializable {

    private Connection conn;

    public MadilynStatesBean() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            conn = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/CSD430",
                    "student1",
                    "pass"
            );

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // INSERT
    public void addState(String name, String abbr, String capital,
                         double population, String region) {
        try {
            String sql = "INSERT INTO madilynstatesdata " +
                    "(state_name, abbreviation, capital, population_millions, region) " +
                    "VALUES (?,?,?,?,?)";

            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, abbr);
            ps.setString(3, capital);
            ps.setDouble(4, population);
            ps.setString(5, region);

            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // GET ALL STATES
    public ResultSet getAllStates() {
        ResultSet rs = null;

        try {
            String sql = "SELECT * FROM madilynstatesdata";
            PreparedStatement ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return rs;
    }

    // GET IDS
    public List<Integer> getAllStateIds() {
        List<Integer> ids = new ArrayList<>();

        try {
            String sql = "SELECT state_id FROM madilynstatesdata";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                ids.add(rs.getInt("state_id"));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return ids;
    }

    // GET SINGLE STATE
    public ResultSet getStateById(int id) {
        ResultSet rs = null;

        try {
            String sql = "SELECT * FROM madilynstatesdata WHERE state_id=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);

            rs = ps.executeQuery();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return rs;
    }

    // UPDATE
    public void updateState(int id, String name, String abbr,
                            String capital, double population, String region) {
        try {
            String sql = "UPDATE madilynstatesdata " +
                    "SET state_name=?, abbreviation=?, capital=?, population_millions=?, region=? " +
                    "WHERE state_id=?";

            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, abbr);
            ps.setString(3, capital);
            ps.setDouble(4, population);
            ps.setString(5, region);
            ps.setInt(6, id);

            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}