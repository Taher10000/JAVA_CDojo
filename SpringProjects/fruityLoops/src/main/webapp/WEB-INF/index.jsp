<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" href="/css/main.css"/>
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<h1 class="text-danger"> Fruit Store: </h1>
	

	<table class="table table-danger">
	<thead>
		<thead>
		<tr class="table-info">
		<th>Name</th>
		<th>Price</th>
		</tr>
		</thead>
		<tbody>
		<c:forEach var="fruit" items="${fruits}">
		<tr>
		<td><c:out value="${fruit.name}"></c:out></td>
		<td><c:out value="${fruit.price}"></c:out></td>
		</tr>
		</c:forEach>
		</tbody>
	</table>
</body>
</html>