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
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/files/style.css">
<body>
	<div class="background">
		<div class="container">
			<div class="screen">
				<div class="screen-header">
					<div class="screen-header-left">
						<div class="screen-header-button close"></div>
						<div class="screen-header-button maximize"></div>
						<div class="screen-header-button minimize"></div>
					</div>
					<div class="screen-header-right">
						<div class="screen-header-ellipsis"></div>
						<div class="screen-header-ellipsis"></div>
						<div class="screen-header-ellipsis"></div>
					</div>
				</div>
				<div class="screen-body">
					<div class="screen-body-item left">
						<div class="app-title">
							<span>Please Fill the form</span> <span>Thank you!!</span>
						</div>
						<div class="app-contact">CONTACT INFO : +91 9972174565</div>
					</div>
					<div class="screen-body-item">
						<div class="app-form">
							<form:form action="displayuser" modelAttribute="user">
								<div class="app-form-group">
									Name :
									<form:input path="name" required="true" />
								</div>
								<div class="app-form-group">
									Password:
									<form:password path="password" showPassword="true" required="true"/>
								</div>
								<div class="app-form-group">
									Gender :
									<form:radiobuttons path="gender" items="${gender}" />
								</div>
								<div class="app-form-group message">
									Country :
									<form:select path="country" items="${country}" />
								</div>
								<div class="app-form-group message">
									Information:
									<form:textarea path="info" />
								</div>
								<div class="app-form-group message">
									Skills:
									<form:checkboxes path="skills" items="${skills}" required="true" />
								</div>
								<div class="app-form-group buttons">
									<input type="submit" value="Submit" />
								</div>
							</form:form>
						</div>
					</div>
				</div>
			</div>
			<div class="credits">
				Created by <a class="credits-link"
					href="https://dribbble.com/shots/2666271-Contact" target="_blank">
					<svg class="dribbble" viewBox="0 0 200 200">
          <g stroke="#ffffff" fill="none">
            <circle cx="100" cy="100" r="90" stroke-width="20"></circle>
            <path
							d="M62.737004,13.7923523 C105.08055,51.0454853 135.018754,126.906957 141.768278,182.963345"
							stroke-width="20"></path>
            <path
							d="M10.3787186,87.7261455 C41.7092324,90.9577894 125.850356,86.5317271 163.474536,38.7920951"
							stroke-width="20"></path>
            <path
							d="M41.3611549,163.928627 C62.9207607,117.659048 137.020642,86.7137169 189.041451,107.858103"
							stroke-width="20"></path>
          </g>
        </svg> Mounish
				</a>
			</div>
		</div>
	</div>
</body>
</html>
