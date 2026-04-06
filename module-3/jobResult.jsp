<!--
Madilyn Carpenter
4/5/2026
Assignment: Gathering user data
Purpose: Create an html page to gather and store user data into a jsp file.
-->

<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Application Submitted</title>
</head>
<body>

<h1>Job Application Summary:</h1>
<p>Thank you for applying! Below is the information you submitted.</p>

<%
    // Retrieve form values using Scriptlets
    String fullname = request.getParameter("fullname");
    String email = request.getParameter("email");
    String experience = request.getParameter("experience");
    String employmentType = request.getParameter("employmentType");
    String position = request.getParameter("position");
    String about = request.getParameter("about");

    // Get multiple checkbox values
    String[] skills = request.getParameterValues("skills");

    String skillList = "None";
    if(skills != null){
        skillList = String.join(", ", skills);
    }
%>

<table border="1" cellpadding="10">
    <tr>
        <th>Field</th>
        <th>Input</th>
    </tr>

    <tr>
        <td>Full Name</td>
        <td><%= fullname %></td>
    </tr>

    <tr>
        <td>Email</td>
        <td><%= email %></td>
    </tr>

    <tr>
        <td>Years of Experience</td>
        <td><%= experience %></td>
    </tr>

    <tr>
        <td>Employment Type</td>
        <td><%= employmentType %></td>
    </tr>

    <tr>
        <td>Skills</td>
        <td><%= skillList %></td>
    </tr>

    <tr>
        <td>Position Applied For</td>
        <td><%= position %></td>
    </tr>

    <tr>
        <td>About Applicant</td>
        <td><%= about %></td>
    </tr>

</table>

</body>
</html>