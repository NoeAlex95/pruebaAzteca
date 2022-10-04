<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Success</title>
<style type="text/css">
	span {
		display: inline-block;
		width: 200px;
		text-align: left;
	}
</style>
</head>
<body>
	<div align="center">
		<h2>Registration Succeeded!</h2>
		<span>name:</span><span>${client.nombre}</span><br/>
		<span>Date of Birth:</span><span>${client.fecha_nacimiento}</span><br/>
		<span>Phone:</span><span>${client.celular}</span><br/>
		<span>Email:</span><span>${client.correo}</span><br/>	
	</div>

	<a href="/client/list">list of clients</a>
</body>
</html>