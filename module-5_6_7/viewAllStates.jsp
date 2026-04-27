<!--
Madilyn Carpenter
4/26/2026
Assignment: Working with CRUD & JavBeans
Purpose: Create a UI that can intake user data, store it in a database, and return data from the database.
-->

<%@ page import="myapp.MadilynStatesBean, java.sql.*" %>

<%
MadilynStatesBean bean = new MadilynStatesBean();
ResultSet rs = bean.getAllStates();
%>

<!DOCTYPE html>
<html>
<body>

<h1>All State Records</h1>

<table border="1">
<thead>
<tr>
    <th>ID</th>
    <th>State Name</th>
    <th>Abbreviation</th>
    <th>Capital</th>
    <th>Population (Millions)</th>
    <th>Region</th>
</tr>
</thead>

<%
if(rs != null){
    while(rs.next()){
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
    }
} else {
%>
<tr>
    <td colspan="5">No data found or DB error</td>
</tr>
<%
}
%>

</table>
</body>
</html>