<!--
Madilyn Carpenter
5/3/2026
Assignment: Working with CRUD & JavBeans
Purpose: Create a UI that can intake user data, store it in a database, return data from the database, and allow user to update data.
-->

<%@ page import="java.util.*" %>
<%@ page import="myapp.MadilynStatesBean" %>

<html>
<body>
<h1>Select State to Update</h1>

<form action="editState.jsp" method="post">

<select name="state_id">

<%
MadilynStatesBean bean = new MadilynStatesBean();
List<Integer> ids = bean.getAllStateIds();

for (Integer id : ids) {
%>
    <option value="<%= id %>">
        State ID <%= id %>
    </option>
<%
}
%>

</select>

<br><br>
<input type="submit" value="Edit Record">
</form>

</body>
</html>