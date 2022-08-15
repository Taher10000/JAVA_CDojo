<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" href="/css/main.css"/>
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="/css/style.css">
<title>Book Share</title>
</head>
<body>
	<div class="d-flex justify-content-around">
	<h2 class="text-warning">Change your Entry:</h2>
			<a href="/home" class="btn btn-primary">Back to shelves</a></div>
			<br /><br /><br />
	
	<form:form action="/books/${book.id}/edit" method="post" modelAttribute="book" class = "bg-secondary text-info h6" id="form">
		 <input type="hidden" name="_method" value="put">
	 
    <p>
        <form:label path="title">Title</form:label>
        <form:errors path="title"/>
        <form:input path="title"/>
    </p>
   
    <p>
        <form:label path="author">Author</form:label>
        <form:errors path="author"/>
        <form:input path="author"/>
    </p>
    <p>
        <form:label path="thoughts">My thoughts</form:label>
        <form:errors path="thoughts"/>     
        <form:textarea path="thoughts"/>
    </p>   
    <input type="submit" value="Submit"/>
</form:form> 
</body>
</html>