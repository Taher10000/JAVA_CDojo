<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" href="/css/main.css"/>
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="/css/style.css">
<title>Login and Registration</title>
</head>
<body>
	<h2 class="text-primary">Welcome to Book Club</h2>
	<h4 class="text-primary">Join Our Growing Community</h4><br /><br />
	<div class="d-flex justify-content-around">
	<div>
	<form:form action="/register" method="post" modelAttribute="newUser" class = "bg-secondary text-info h6" id="reg">
		<h3 class="text-danger">Register</h3> <br />
	
				<div>
					<form:label path="userName">User Name:</form:label>
					<form:input path="userName" />
					<form:errors path="userName" />
				</div> <br />
				<div>
					<form:label path="email">Email:</form:label>
					<form:input path="email" />
					<form:errors path="email" />
				</div> <br />
				<div>
					<form:label path="password">Password:</form:label>
					<form:input path="password"/>
					<form:errors path="password" />
				</div> <br />
				<div>
					<form:label path="confirm">Confirm Password:</form:label>
					<form:input path="confirm"/>
					<form:errors path="confirm" />
				</div> <br />
				
				<button>Submit</button>
			</form:form>
			</div>
			<div>
	<form:form action="/login" method="post" modelAttribute="newLogin" class = "bg-secondary text-info h6" id="reg">
		<h3 class="text-warning">Log In</h3> <br />
	
				<div>
					<form:label path="email">Email:</form:label>
					<form:input path="email" />
					<form:errors path="email" />
				</div><br />
				<div>
					<form:label path="password">Password:</form:label>
					<form:input path="password"/>
					<form:errors path="password" />
				</div><br />
				<button>Submit</button>
			</form:form>
			</div>
			</div>
	
</body>
</html>