<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<%@ page isErrorPage="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
	<div class="d-flex justify-content-between">
	<div>
	<h2 class = "text-success">Welcome, ${userName}</h2>
	<h4 class = "text-secondary">Books from everyone s shelf:</h4></div>
	<div>
	<a href="/" class="btn btn-outline-danger">Logout</a> <br /><br />
	<a href="/books/new"   class="btn btn-outline-info">+ Add a book to my shelf!</a>
	</div>
	
	</div>
	
	<table class="table table-info">
    <thead class="table-warning">
        <tr>
            <th>ID</th>
            <th>Title</th>
            <th>Author Name</th>
            <th>Posted By</th>
        </tr>
    </thead>
    <tbody>
    <c:forEach var="book" items="${books}">
        <tr>
            <td><c:out value="${book.id}"/></td>
            <td><a href="/books/${book.id}"><c:out value="${book.title}"></c:out></a></td>
            <td><c:out value="${book.author}"/></td>
   			<td><c:out value="${book.user.userName}"/></td>            
        </tr>
        </c:forEach>
    </tbody>
    </table>
</body>
</html>