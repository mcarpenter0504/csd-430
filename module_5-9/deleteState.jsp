<!--
Madilyn Carpenter
5/10/2026
Assignment: Working with CRUD & JavBeans
Purpose: Create a UI that can intake user data, store it in a database, return data from the database, and allow user to update and delete data.
-->

<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="myapp.MadilynStatesBean" %>

<html>
<head>
<title>Delete State Records</title>
</head>

<body>

<h1>Delete State Records</h1>
<p>Select a State ID to delete from the database.</p>

<%
MadilynStatesBean bean = new MadilynStatesBean();

// If form submitted → delete record
String idParam = request.getParameter("state_id");
if(idParam != null){
    int id = Integer.parseInt(idParam);
    bean.deleteState(id);
}
%>

<!-- Dropdown Form -->
<form method="post">

<select name="state_id">
<%
List<Integer> ids = bean.getAllStateIds();

for(Integer id : ids){
%>
    <option value="<%=id%>">State ID <%=id%></option>
<%
}
%>
</select>

<input type="submit" value="Delete Selected Record">
</form>

<br><br>

<h2>All Remaining Records</h2>

<table border="1">
<thead>
<tr>
<th>ID</th>
<th>State Name</th>
<th>Abbreviation</th>
<th>Capital</th>
<th>Population (millions)</th>
<th>Region</th>
</tr>
</thead>

<tbody>
<%
ResultSet rs = bean.getAllStates();
boolean hasData = false;

while(rs.next()){
    hasData = true;
%>
<tr>
<td><%=rs.getInt("state_id")%></td>
<td><%=rs.getString("state_name")%></td>
<td><%=rs.getString("abbreviation")%></td>
<td><%=rs.getString("capital")%></td>
<td><%=rs.getDouble("population_millions")%></td>
<td><%=rs.getString("region")%></td>
</tr>
<%
}

if(!hasData){
%>
<tr>
<td colspan="6">No records remaining</td>
</tr>
<%
}
%>

</tbody>
</table>

</body>
</html>