<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Your Visit Count</title>
</head>
<body>
	<h1>You visited home or your_server: <c:out value="${showCount}"></c:out></h1>
</body>
</html>