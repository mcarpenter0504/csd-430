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
MadilynStatesBean bean = new MadilynStatesBean();
ResultSet rs = bean.getStateById(id);
rs.next();
%>

<html>
<body>
<h1>Edit State</h1>

<form action="updateState.jsp" method="post">

State ID: <%=id%>
<input type="hidden" name="state_id" value="<%=id%>"><br><br>

Name: <input type="text" name="name" value="<%=rs.getString("state_name")%>"><br><br>
Abbreviation: <input type="text" name="abbr" value="<%=rs.getString("abbreviation")%>"><br><br>
Capital: <input type="text" name="capital" value="<%=rs.getString("capital")%>"><br><br>
Population: <input type="text" name="population" value="<%=rs.getDouble("population_millions")%>"><br><br>
Region: <input type="text" name="region" value="<%=rs.getString("region")%>"><br><br>

<input type="submit" value="Update Record">
</form>

</body>
</html>