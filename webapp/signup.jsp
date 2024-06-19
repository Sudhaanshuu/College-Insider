<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Signup | College Insider</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<!-- Navbar -->


<!-- Signup Form -->
<div id="content">
    <form action="SignupServlet" method="post">
        <label for="name">Name:</label><br>
        <input type="text" id="name" name="name"><br>
        <label for="age">Age:</label><br>
        <input type="text" id="age" name="age"><br>
        <label for="email">Email:</label><br>
        <input type="email" id="email" name="email"><br>
        <label for="password">Password:</label><br>
        <input type="password" id="password" name="password"><br>
        <label for="confirmPassword">Confirm Password:</label><br>
        <input type="password" id="confirmPassword" name="confirmPassword"><br>
        <input type="submit" value="Signup">
         <p>I have an account <a href="login.jsp">Login</a></p>
    </form>
</div>

<!-- Footer -->

</body>
</html>
