<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Input User Info</title>
</head>
<body bgcolor="pink">
	<h1>Welcome User!</h1>
	<form:form action="displayuser" modelAttribute="user">
	Name : <form:input path="name" />
	Password: <form:password path="password" showPassword="true"/>
		<p></p>
	Gender : <form:radiobuttons path="gender" items="${gender}" />
		<p></p>
	Country : <form:select path="country" items="${country}" />
		<p></p>
	Information: <form:textarea path="info" />
		<p></p>
	Skills: <form:checkboxes path="skills" items="${skills}" />
		<p></p>
		<input type="submit" value="Submit" />
	</form:form>
</body>
</html>