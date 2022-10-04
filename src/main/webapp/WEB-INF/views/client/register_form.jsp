<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    
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
		<h2>Client Registration</h2>
		<form:form action="/client/registerClient" method="post" modelAttribute="client">
			<form:label path="nombre">Name:</form:label>
			<form:input path="nombre"/><br/>
			
			<form:label path="fecha_nacimiento">Date of Birth:</form:label>
			<form:input type="date" path="fecha_nacimiento"/><br/>		

			<form:label path="celular">Phone number:</form:label>
			<form:input path="celular"/><br/>
			
			<form:label path="correo">Email:</form:label>
			<form:input type="email" path="correo"/><br/>	

			<form:button>Register</form:button>
		</form:form>
	</div>
	<a href="client/list">Cancel</a>
</body>
</html>