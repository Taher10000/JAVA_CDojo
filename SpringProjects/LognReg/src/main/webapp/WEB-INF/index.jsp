<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login and Registration</title>
</head>
<body>
	<h2>Welcome</h2>
	<h4>Join Our Growing Community</h4>
	<h3>Register</h3>
	<form:form action="/register" method="post" modelAttribute="newUser">
				<div>
					<form:label path="userName">User Name:</form:label>
					<form:input path="userName" />
					<form:errors path="userName" />
				</div>
				<div>
					<form:label path="email">Email:</form:label>
					<form:input path="email" />
					<form:errors path="email" />
				</div>
				<div>
					<form:label path="password">Password:</form:label>
					<form:input path="password"/>
					<form:errors path="password" />
				</div>
				<div>
					<form:label path="confirm">Confirm Password:</form:label>
					<form:input path="confirm"/>
					<form:errors path="confirm" />
				</div>
				
				<button>Submit</button>
			</form:form>
			
	<h3>Log In</h3>
	<form:form action="/login" method="post" modelAttribute="newLogin">
				<div>
					<form:label path="email">Email:</form:label>
					<form:input path="email" />
					<form:errors path="email" />
				</div>
				<div>
					<form:label path="password">Password:</form:label>
					<form:input path="password"/>
					<form:errors path="password" />
				</div>
				<button>Submit</button>
			</form:form>
	
</body>
</html>