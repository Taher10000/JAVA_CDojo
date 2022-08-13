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
<link rel="stylesheet" type="text/css" href="/css/style.css">
<title>Omikuji</title>
</head>
<body>
<h2 class ="text-center text-danger">Here s your Omikuji!</h2>
<div class="h5" id="msg">
In <c:out value="${num}"/> years, you will live in <c:out value="${city}"/> <br />
with <c:out value="${person}"/> as your roommate, <br /> <c:out value="${work}"/> for living. <br />
The next time you see a <c:out value="${living}"/>, <br /> you will have good luck. <br />
Also, <c:out value="${nice}"/>.
</div>
<a href="/omikuji" class="btn-success">Go back</a>

</body>
</html>