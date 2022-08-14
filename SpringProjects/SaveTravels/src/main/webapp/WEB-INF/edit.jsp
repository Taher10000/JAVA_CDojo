<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Expense</title>
</head>
<body>

	<h2>Edit expense:</h2>
	
	<form:form action="/expenses/edit/${expense.id}" method="post" modelAttribute="expense">
		 <input type="hidden" name="_method" value="put">
    <p>
        <form:label path="name">Expense name</form:label>
        <form:errors path="name"/>
        <form:input path="name"/>
    </p>
   
    <p>
        <form:label path="vendor">Vendor</form:label>
        <form:errors path="vendor"/>
        <form:input path="vendor"/>
    </p>
    <p>
        <form:label path="amount">Amount</form:label>
        <form:errors path="amount"/>     
        <form:input type="number" path="amount"/>
    </p>   
     <p>
        <form:label path="description">Description</form:label>
        <form:errors path="description"/>
        <form:textarea path="description"/>
    </p> 
    <input type="submit" value="Submit"/>
</form:form> 

</body>
</html>