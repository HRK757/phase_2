<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
<h2>Learners Academy</h2>
<form action="LoginController" method="post">
<label>Enter Username</label>
<input type="text" name="username"><br/>
<label>Enter Password</label>
<input type="password" name="password"><br/>
<input type="submit" value="submit">
<input type="reset" value="reset">
</form>
</body>
</html>