<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
	<head>
		<title>Azteca Login</title>
	</head>	
	
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

		.form-control{
			font-size: 14px!important;
		}

		.login-box {
		max-width: 450px;
		margin:auto;
		width: 100%;

		}
		.login-box>form {
			background-color: #FFFFFF;
			border-radius: 10px;
			box-shadow: 0px 0px 8px #888888;
		}
		.logoCentral{
			width: 130px;
		}
		.logoCard{
			width: 75px;
		}
		.img-login2 {
			border-radius: 10px 10px 0px 0px;
		}
		.inputLogin{
			height: 38px;
		}
		.forgot-password {
			display: inline-block;
			margin-top: 8px;
		}
		.sky-form.boxed {
			border:rgba(0,0,0,0.1) 1px solid;
		}
	</style>

	<body>
		<div class="wrapper d-flex align-items-center justify-content-center">
			<h1><strong>Azteca Login</strong></h1>
							
			<c:url value="/login" var="login"/>
			<div class="login-box">

				<div class="input-group">
					<img src="https://images.app.goo.gl/aC7JLdng3zt2gf2s5" class="img-login2"/>
				</div>

				<form:form action="${login}" method="post" class="sky-form boxed" autocomplete='off'>

					

					<div class="input-group">
							<input type='text' name='username' id='username' class="form-control required" placeholder="Username"/>   
					</div>
					<div class="input-group">
							<input type='password' name='password' id='password' class="form-control required" placeholder="Password"/>
					</div>
					<div class="d-flex justify-content-center mt-3 mb-3">
						<button  class="btn btn-primario btn-flat mb-3 mt-3" type="submit">Login </button>
					</div>
				</form:form>
			</div>
		</div>
	</body>
</html>
