<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page isErrorPage="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Ninja</title>
</head>
<body>
<h2>New Ninja</h2>
			<form:form action="/ninjas/create" method="post" modelAttribute="newNinja">
				<div>
					<form:select path="dojo">
					<form:label path="dojo">Select Dojo:</form:label>
						<c:forEach var="oneDojo" items="${ allDojos }">
							<form:option  value="${ oneDojo.id }" path="dojo">
							<c:out value="${ oneDojo.name }" />
							</form:option>
						</c:forEach>
					</form:select>
				</div>
				<div>
					<form:label path="firstName">First Name:</form:label>
					<form:input path="firstName" />
					<form:errors path="firstName" />
				</div>
				<div>
					<form:label path="lastName">Last Name:</form:label>
					<form:input path="lastName" />
					<form:errors path="lastName" />
				</div>
				<div>
					<form:label path="age">Age</form:label>
					<form:input path="age"/>
					<form:errors path="age" />
				</div>
				
				<button>Create</button>
			</form:form>

</body>
</html>