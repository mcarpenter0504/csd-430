<!--
Madilyn Carpenter
4/26/2026
Assignment: Working with CRUD & JavBeans
Purpose: Create a UI that can intake user data, store it in a database, and return data from the database.
-->

<!DOCTYPE html>
<html>
<head>
<title>Add State</title>
</head>
<body>

<h1>Add New State Record</h1>

<form action="insertState.jsp" method="post">
State Name: <input type="text" name="state_name"><br><br>
Abbreviation: <input type="text" name="abbreviation"><br><br>
Capital: <input type="text" name="capital"><br><br>
Population (Millions): <input type="text" name="population_millions"><br><br>
Region: <input type="text" name="region"><br><br>

<input type="submit" value="Add Record">
</form>

</body>
</html>