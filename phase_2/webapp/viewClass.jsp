<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Class</title>
</head>
<body>
<h2>View All Class Details</h2>
<table border="1">
	<tr>
		<th>ClassId</th>
		<th>Class Name</th>
	</tr>
	<core:forEach items="${sessionScope.listOfClass}" var="cls">
		<tr>
			<td> <core:out value="${cls.class_id}"></core:out> </td>
			<td> <core:out value="${cls.name}"></core:out> </td>
		</tr>
	</core:forEach>
</table>
<br/>
<a href="home.jsp">Main</a>
</body>
</html>