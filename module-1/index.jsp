<%--
Madilyn Carpenter
3/22/2026
Assignment: JSP Setup
Purpose: Displays a simple JSP page with HTML and embedded Java code to show current information.
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<html>
<head>
    <title>JSP Example</title>
</head>
<body>

    <h1>Welcome to My JSP Page</h1>

    <p>This page demonstrates Java and HTML together.</p>

    <%
        // Java code inside JSP
        String name = "Madilyn";
        int year = java.time.Year.now().getValue();
    %>

    <p>Hello, <%= name %>!</p>
    <p>The current year is: <%= year %></p>

</body>
</html>