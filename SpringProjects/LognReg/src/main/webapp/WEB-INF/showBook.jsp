<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" href="/css/main.css"/>
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="/css/style.css">
<title>Read Share</title>
</head>
<body>
<div class="d-flex justify-content-around">
	<h2 class="text-muted d-flex text-"><c:out value="${book.title}"/></h2>
		<a href="/books" class="btn btn-info">Back to shelves</a>
		</div> <br /><br />
		<div id="thought" class="text-secondary">
		
		<c:choose>
		<c:when test="${ book.user.id == userId}"> 
		<h3>You read  ${book.title} by ${book.author} </h3> 
		<h4>Here are your thoughts: </h4>
		</c:when>
		<c:otherwise> 
	<h3>${book.user.userName} read ${book.title} by ${book.author}</h3>
	<h4>Here are ${book.user.userName} 's thoughts: </h4>
		</c:otherwise>
		
		</c:choose>
		
	<p><c:out value="${book.thoughts}"/></p>
	<br />
	<c:if test="${book.user.id == userId}">
 	<a href="/books/${book.id}/edit" class="btn btn-success">edit</a>
	<form action="/books/${book.id}/delete" method = "post">
	<input type="hidden" name="_method" value="delete"/>
	<button class="btn btn-outline-danger">Delete this Book</button>
	</form>
	</c:if>
	</div>
	
	
</body>
</html>