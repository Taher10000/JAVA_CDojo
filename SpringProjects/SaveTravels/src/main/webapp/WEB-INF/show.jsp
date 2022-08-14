<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Expense Name: <c:out value="${expense.name}"/></h1>
	<p>Expense Description: <c:out value="${expense.description}"/></p>
	<p>Vendor: <c:out value="${expense.vendor}"/></p>
	<p>Amount: <c:out value="${expense.amount}"/></p>
</body>
</html>