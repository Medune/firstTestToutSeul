<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Add a new department</h1>
		<form:form method ="POST" action="saveDepartement" modelAttribute="departement">
			<table>
				<tr>
					<td>Department code</td>
					<td><form:input path="codeDepartement"/>
				</tr>
				<tr>
					<td>Department name</td>
					<td><form:input path="nomDepartement"/>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="Add">
				</tr>
			</table>
		</form:form>
	
	<h1>List of the departments</h1>
		<table border="1">
			<tr>
				<th></th>
				<th>Code</th>
				<th>Name</th>
			</tr>
			<c:forEach items="${listDepartement}" var="d">
				<tr>
					<td>${d.idDepartement}</td>
					<td>${d.codeDepartement}</td>
					<td>${d.nomDepartement}</td>
				</tr>
			</c:forEach>
		</table>
</body>
</html>