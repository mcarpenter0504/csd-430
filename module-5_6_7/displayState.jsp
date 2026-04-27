<!--
Madilyn Carpenter
4/26/2026
Assignment: Working with CRUD & JavBeans
Purpose: Create a UI that can intake user data, store it in a database, and return data from the database.
-->

<%@ page import="java.sql.*" %>
<%@ page import="myapp.MadilynStatesBean" %>

<!DOCTYPE html>
<html>
<head>
    <title>State Record Display</title>
</head>
<body>

<h1>State Record Details</h1>

<%
    // Get selected ID from dropdown form
    int id = Integer.parseInt(request.getParameter("state_id"));

    // Create JavaBean (must include package name)
    myapp.MadilynStatesBean bean = new myapp.MadilynStatesBean();

    // Get record from database
    ResultSet rs = bean.getStateById(id);
%>

<table border="1" cellpadding="10">

    <thead>
        <tr>
            <th>ID</th>
            <th>State Name</th>
            <th>Abbreviation</th>
            <th>Capital</th>
            <th>Population</th>
            <th>Region</th>
        </tr>
    </thead>

    <tbody>
        <%
            if (rs.next()) {
        %>
        <tr>
            <td><%= rs.getInt("state_id") %></td>
            <td><%= rs.getString("state_name") %></td>
            <td><%= rs.getString("abbreviation") %></td>
            <td><%= rs.getString("capital") %></td>
            <td><%= rs.getDouble("population_millions") %></td>
            <td><%= rs.getString("region") %></td>
        </tr>
        <%
            } else {
        %>
        <tr>
            <td colspan="6">No record found</td>
        </tr>
        <%
            }
        %>
    </tbody>

</table>

</body>
</html>