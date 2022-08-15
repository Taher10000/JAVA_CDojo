<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Read Share</title>
</head>
<body>
	<h2><c:out value="${book.title}"/></h2>
		<div><a href="/home">Back to shelves</a></div>
	<h3>${book.user.name} read ${book.title} by ${book.author}</h3>
	<h4>Here are ${book.user.name} 's thoughts: </h4>
	<p><c:out value="${book.thoughts}"/></p>
	
	<a href="/books/${book.id}/edit">edit</a>
</body>
</html>