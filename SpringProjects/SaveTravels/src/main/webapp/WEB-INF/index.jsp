<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Save Travels</title>
</head>
<body>
    
<h1>Save Travels</h1>
<table>
    <thead>
        <tr>
            <th>Expense</th>
            <th>Vendor</th>
            <th>Amount</th>
        </tr>
    </thead>
    <tbody>
   <c:forEach var="expense" items="${expenses}">
		<tr>
		<td><c:out value="${expense.name}"></c:out></td>
		<td><c:out value="${expense.vendor}"></c:out></td>
		<td><c:out value="${expense.amount}"></c:out></td>
		</tr>
		</c:forEach>
    </tbody>
</table>
	<h2>Add an expense:</h2>
	<form:form action="/expenses" method="post" modelAttribute="expense">
    <p>
        <form:label path="name">Title</form:label>
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