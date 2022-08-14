<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>New Dojo</title>
</head>
<body>
   	<h1>New Dojo</h1>
   	<form:form action="/dojos/create" method="post" modelAttribute="newDojo">
   		<p>
   			<form:label path="name">Name:</form:label>
   			<form:input path="name" />
   			<form:errors path="name" />
   		</p>
   	
   		<button>Create</button>
   	</form:form>
   	
</body>
</html>