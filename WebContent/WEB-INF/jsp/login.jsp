<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Authentification</title>
</head>
<body>
	<h1>Authentification</h1>
	<form:form method="post" action="login" modelAttribute="">
		<table>
			<tr>
				<td>login</td>
				<td><form:input path="username"/></td>
			</tr>
			<tr>
				<td>password</td>
				<td><form:input path="password"/></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Se Connecter"/></td>
			</tr>
		</table>
	</form:form>
</body>
</html>