<%@page import="com.bean.Cls"%>
<%@page import="com.bean.Subject"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Assign</title>
</head>
<body>
<a href="index.html">Back to Main Menu</a><br>

<h1>Assign a Subject to a Class</h1>
<%
    Configuration con=new Configuration();
    con.configure("hibernate.cfg.xml");
	SessionFactory sf  = con.buildSessionFactory();
	Session hibernateSession = sf.openSession();
	List<Cls> classes = hibernateSession.createQuery("from Cls").list();
	List<Subject> subjects = hibernateSession.createQuery("from Subject").list();
%>
<form action="AssignSubject" method="post">
<table>
<tr>
<th>Class Id </th>
<th>Section Name </th>
<th>Subject Id </th>
<th>Subject Name </th>
</tr>
<tr>
<td>
<select name="cls">
<%
	for (Cls clas : classes){
	out.print("<option>" + clas.getCid());
	out.print("<option>"+clas.getSection());
	out.print("</option>");
	}
%>
</select>
</td>

<td>
<select name="subject">
<%
	for (Subject subject : subjects){
	out.print("<option>" + subject.getSubid());
	out.print("<option>"+subject.getSubname());
	out.print("</option>");
	}
%>
</select>
</td>
</tr>
</table>
<input type="submit" value="Submit">
</form>
</body>
</html>