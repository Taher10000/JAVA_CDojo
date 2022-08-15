<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<h1 class="text-primary">Add a Book to your shelf!</h1>
	<a href="/home" class="btn btn-danger">Back to shelves</a></div>
	<br /><br />
	<form:form action="/books/new" method="post" modelAttribute="newBook" class = "bg-success text-warning h6" id="form">
	<form:input type="hidden" path="user" value="${user_id}" />
    <p>
        <form:label path="title">Title</form:label>
        <form:errors path="title"/>
        <form:input path="title"/>
    </p>
    <p>
        <form:label path="author">Author</form:label>
        <form:errors path="author"/>
        <form:textarea path="author"/>
    </p>
    <p>
        <form:label path="thoughts">My thoughts</form:label>
        <form:errors path="thoughts"/>
        <form:input path="thoughts"/>
    </p>
      
    <input type="submit" value="Submit" class="btn btn-info"/>
</form:form> 
</body>
</html>