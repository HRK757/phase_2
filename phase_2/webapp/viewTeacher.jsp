<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Teacher</title>
</head>
<body>
<h2>View All Teacher Details</h2>
<table border="1">
	<tr>
		<th>Teacher Id</th>
		<th>Teacher Name</th>
	</tr>
	<core:forEach items="${sessionScope.listOfTeacher}" var="teacher">
		<tr>
			<td> <core:out value="${teacher.teacher_id}"></core:out> </td>
			<td> <core:out value="${teacher.name}"></core:out> </td>
		</tr>
	</core:forEach>
</table>
<br/>
<a href="home.jsp">Main</a>
</body>
</html>