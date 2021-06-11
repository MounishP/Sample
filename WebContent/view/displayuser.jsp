<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display User</title>
</head>
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/files/style.css">
<body bgcolor="yellow">
	Name : ${user.name}
	<p></p>
	Password: ${user.password}
	<p></p>
	Gender : ${user.gender}
	<p></p>
	Country : ${user.country}
	<p></p>
	Information : ${user.info}
	<p></p>
	Skills: ${user.skills}
</body>
</html>