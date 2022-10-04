<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Client Registration Form</title>
<style type="text/css">
	label {
		display: inline-block;
		width: 200px;
		margin: 5px;
		text-align: left;
	}
	input[type=text], input[type=password], select {
		width: 200px;	
	}
	input[type=radio] {
		display: inline-block;
		margin-left: 45px;
	}
	input[type=checkbox] {
		display: inline-block;
		margin-right: 190px;
	}	
	
	button {
		padding: 10px;
		margin: 10px;
	}
</style>
</head>
<body>
	<div align="center">
	
	


	<h1>Update Contact</h1>
	<form:form method="post" action="/client/updateC/${id}">
		<table>
			<tr>
				<td>Name: </td>
				<td><form:input path="nombre"/></td>
			</tr>
			<tr>
				<td>Email: </td>
				<td><form:input path="correo"/></td>
			</tr>
			<tr>
				<td>Date of Birth:: </td>
				<td><form:input type="date" path="fecha_nacimiento"/></td>
			</tr>
			<tr>
				<td>Phone number: </td>
				<td><form:input path="celular"/></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="Update" /></td>
			</tr>
		</table>
	</form:form>
	<a href="/client/list">Cancel</a>
</div>
</body>
</html>