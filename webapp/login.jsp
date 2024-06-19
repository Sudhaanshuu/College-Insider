<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login | College Insider</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

<% if (request.getAttribute("errorMessage") != null) { %>
    <p><%= request.getAttribute("errorMessage") %></p>
<% } %>

<!-- Login Form -->
<div id="content">
    <form action="LoginServlet" method="post">
        <label for="email">Email:</label><br>
        <input type="email" id="email" name="email"><br>
        <label for="password">Password:</label><br>
        <input type="password" id="password" name="password"><br>
        <input type="submit" value="Login"><br>
        <p>Don't have an account? <a href="signup.jsp">Sign up</a></p>
    </form>
</div>


<!-- Footer -->

</body>
</html>
