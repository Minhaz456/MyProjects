<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
                                 "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register User</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script>
	$(document).ready(function() {
		$("#id").change(function() {
			$.ajax({
				url : "validateEmail",
				data : {
					id : $("#id").val()
				},
				success : function(responseText) {
					$("#errMsg").text(responseText);
					if (responseText != "") {
						$("#id").focus();
					}

				}

			})
	
		});

	});


	}
</script>
<style>
input[type=text], select {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

input[type=submit] {
	width: 100%;
	background-color: #4CAF50;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

input[type=submit]:hover {
	background-color: #45a049;
}

body {
	border-radius: 5px;
	background-color: #f2f2f2;
	padding: 10px;
}

button { <input type="submit" name="register" />
	
}
</style>
</head>
<body>
	<div class="container">
		<form action="registerUser" method="post">
			<div class="form-group">
				<label for="id">ID:</label> <input type="text" class="form-control"
					id="id" placeholder="Enter id" name="id"><span id="errMsg"></span>
			</div>
			<br>
			<div class="form-group">
				<label for="firstName">First Name:</label> <input type="text"
					class="form-control" id="firstName" placeholder="Enter firstname"
					name="firstName">
			</div>
			<br>
			<div class="form-group">
				<label for="lastName">Last Name:</label> <input type="text"
					class="form-control" id="lastName" placeholder="Enter lastname"
					name="lastName">
			</div>
			<br>
			<div class="form-group">
				<label for="email">Email:</label> <input type="text"
					class="form-control" id="email" placeholder="Enter email"
					name="email"><span id="errMsg"></span>
			</div>
			<br>
			<button class="button">Register</button>
		</form>
	</div>
	<br />${result}
	
	<a href="http://localhost:8080/myproject/">back to home</a>

</body>
</html>