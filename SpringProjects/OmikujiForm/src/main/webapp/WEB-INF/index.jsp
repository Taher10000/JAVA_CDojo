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
	<h2 class="text-warning">Send an Omikuji!</h2>
	<form action="/submitForm" method="POST" class = "bg-danger text-warning h6" id="form">
	<label>Pick any number from 5 to 25</label><br />
	<input type="number" name="num" min="5" max="25">	<br /><br />
	
	<label for="city">Enter the name of any city</label><br />
	<input type="text" name="city"><br /><br />
	
	<label for="person">Enter the name of any real person</label><br />
	<input type="text" name="person"><br /><br />
	
	<label for="work">Enter any professional endeavor or hobby</label><br />
	<input type="text" name="work"><br /><br />
	
	<label for="living">Enter any type of living thing</label><br />
	<input type="text" name="living"><br /><br />
	
	<label for="nice">Say something nice to someone</label><br />
	<textarea name="nice" id="" cols="30" rows="10"></textarea>	<br /><br />
	<input type="submit" value="send" class="btn-success text-center"><br /><br />
	</form>
</body>
</html>