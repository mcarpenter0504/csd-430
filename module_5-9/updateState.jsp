<!--
Madilyn Carpenter
5/3/2026
Assignment: Working with CRUD & JavBeans
Purpose: Create a UI that can intake user data, store it in a database, return data from the database, and allow user to update data.
-->

<%@ page import="java.sql.*" %>
<%@ page import="myapp.MadilynStatesBean" %>

<%
int id = Integer.parseInt(request.getParameter("state_id"));
String name = request.getParameter("name");
String abbr = request.getParameter("abbr");
String capital = request.getParameter("capital");
double population = Double.parseDouble(request.getParameter("population"));
String region = request.getParameter("region");

MadilynStatesBean bean = new MadilynStatesBean();
bean.updateState(id, name, abbr, capital, population, region);

ResultSet rs = bean.getStateById(id);
rs.next();
%>

<html>
<body>
<h1>Record Updated Successfully</h1>

<table border="1">
<tr>
<th>ID</th>
<th>Name</th>
<th>Abbreviation</th>
<th>Capital</th>
<th>Population (Millions)</th>
<th>Region</th>
</tr>

<tr>
<td><%=rs.getInt("state_id")%></td>
<td><%=rs.getString("state_name")%></td>
<td><%=rs.getString("abbreviation")%></td>
<td><%=rs.getString("capital")%></td>
<td><%=rs.getDouble("population_millions")%></td>
<td><%=rs.getString("region")%></td>
</tr>
</table>

</body>
</html>