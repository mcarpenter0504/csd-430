<%@ page import="myapp.MadilynStatesBean" %>

<!DOCTYPE html>
<html>
<head>
    <title>State Record Display</title>
</head>
<body>

<h1>State Data Display</h1>

<%
    myapp.MadilynStatesBean bean = new myapp.MadilynStatesBean();

    java.util.List<Integer> ids = bean.getAllStateIds();
%>

<form method="post" action="displayState.jsp">
    <select name="state_id">
        <%
            for (Integer id : ids) {
        %>
            <option value="<%= id %>"><%= id %></option>
        <%
            }
        %>
    </select>

    <input type="submit" value="View Record">
</form>

</body>
</html>