<!--
Madilyn Carpenter
4/26/2026
Assignment: Working with CRUD & JavBeans
Purpose: Create a UI that can intake user data, store it in a database, and return data from the database.
-->

<%@ page import="myapp.MadilynStatesBean" %>

<%
String name = request.getParameter("state_name");
String abbreviation = request.getParameter("abbreviation");
String capital = request.getParameter("capital");
double population = Double.parseDouble(request.getParameter("population_millions"));
String region = request.getParameter("region");

MadilynStatesBean bean = new MadilynStatesBean();
bean.addState(name, abbreviation, capital, population, region);

response.sendRedirect("viewAllStates.jsp");
%>