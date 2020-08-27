<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
</head>
<body>
	<h3>Home Page</h3>
	
	<hr>
	
	<p>
	Welcome to our Home page!
	</p>
	
	<hr>
	
	<!-- Display user name and role -->
	<p>
		User: <security:authentication property="principal.username" />
		<br><br>
		Role(s): <security:authentication property="principal.authorities" />
	</p>
	
	<hr>
	
	<!-- A link to point to /leaders - only for the Managers -->
	<p>
		<a href="${pageContext.request.contextPath}/leaders">Leadership meeting</a>
		(Only for Managers)
	</p>
	
	<!-- A link to point to /systems - only for the Admins -->
	<p>
		<a href="${pageContext.request.contextPath}/systems">IT Systems meeting</a>
		(Only for Admins)
	</p>
	
	<hr>
	<form:form action="${pageContext.request.contextPath}/logout" method="POST">
		<input type="submit" value="Logout" />
	</form:form>
	
</body>
</html>