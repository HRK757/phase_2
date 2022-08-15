<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Subject</title>
</head>
<body>
<h2>View All Subject Details</h2>
<table border="1">
	<tr>
		<th>Subject Id</th>
		<th>Subject Name</th>
	</tr>
	<core:forEach items="${sessionScope.listOfSubject}" var="subject">
		<tr>
			<td> <core:out value="${subject.subject_id}"></core:out> </td>
			<td> <core:out value="${subject.name}"></core:out> </td>
		</tr>
	</core:forEach>
</table>
<br/>
<a href="home.jsp">Main</a>
</body>
</html>