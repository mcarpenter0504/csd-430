<%@ page import="myapp.MovieBean" %>

<!--
Madilyn Carpenter
4/12/2026
Assignment: Gathering user data
Purpose: Create an HTML page using JSP scriptlets to retrieve
data from a JavaBean and display it in a formatted table.
-->

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Favorite Movie Record</title>
</head>
<body>

<h1>Favorite Movie Data Display</h1>

<%
    // Create and populate the JavaBean
    MovieBean movie = new MovieBean();

    movie.setTitle("Monty Python and the Holy Grail");
    movie.setGenre("Comedy");
    movie.setYear(1975);
    movie.setDirector("Terry Gilliam, Terry Jones");
    movie.setRating(8.2);
%>

<table border="1" cellpadding="10">

    <tr>
        <th>Field</th>
        <th>Value</th>
        <th>Description</th>
    </tr>

    <tr>
        <td>Title</td>
        <td><%= movie.getTitle() %></td>
        <td>Name of the movie</td>
    </tr>

    <tr>
        <td>Genre</td>
        <td><%= movie.getGenre() %></td>
        <td>Type of movie</td>
    </tr>

    <tr>
        <td>Year</td>
        <td><%= movie.getYear() %></td>
        <td>Release year</td>
    </tr>

    <tr>
        <td>Director</td>
        <td><%= movie.getDirector() %></td>
        <td>Director of the movie</td>
    </tr>

    <tr>
        <td>Rating</td>
        <td><%= movie.getRating() %></td>
        <td>Movie rating score</td>
    </tr>

</table>

</body>
</html>