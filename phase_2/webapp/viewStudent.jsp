<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student</title>
</head>
<body>
<h2>View All StudentDetails</h2>
<table border="1">
	<tr>
		<th>Student Id</th>
		<th>Student Name</th>
	</tr>
	<core:forEach items="${sessionScope.listOfStudent}" var="student">
		<tr>
			<td> <core:out value="${student.student_id}"></core:out> </td>
			<td> <core:out value="${student.name}"></core:out> </td>
		</tr>
	</core:forEach>
</table>
<br/>
<a href="home.jsp">Main</a>
</body>
</html>