<%@page import="com.sud.bean.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profile</title>
<link rel="stylesheet" href="css/app.css">
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<%
	User user = (User) session.getAttribute("user");
	%>
	<c:set var="op" value="${param.op}"/>
	<div class="center">
	<form method="post" action="UpdateServlet" name=""
		style="align-self: center;">
		<table border="0.5" style="background-color: white">
			<tr>
				<td>RollNo :</td>
					<td><input type="text" value="<%=user.getRollNo()%>" disabled="disabled" /></td>
			</tr>
			<tr>
				<td>Name :</td>
				<c:if test="${op == 'edit'}">
					<td><input type="text" name="name" required	value="<%=user.getName()%>" /></td>
				</c:if>
				<c:if test="${op == 'view'}">
					<td><input type="text" value="<%=user.getName()%>" disabled="disabled" /></td>
				</c:if>
			</tr>
			<tr>
				<td>Email :</td>
				<c:if test="${op == 'edit'}">
					<td><input type="text" name="email" required value="<%=user.getEmail()%>" /></td>
				</c:if>
				<c:if test="${op == 'view'}">
					<td><input type="text" value="<%=user.getEmail()%>" disabled="disabled" /></td>
				</c:if>
			</tr>
			<tr>
				<td>Address:</td>
				<c:if test="${op == 'edit'}">
					<td><input type="text" name="address" value="<%=user.getAddress()%>" /></td>
				</c:if>
				<c:if test="${op == 'view'}">
					<td><input type="text" value="<%=user.getAddress()%>" disabled="disabled" /></td>
				</c:if>
			</tr>
			<tr>
				<td>Mobile :</td>
				<c:if test="${op == 'edit'}">
					<td><input type="text" name="mobile" required value="<%=user.getMobile()%>" /></td>
				</c:if>
				<c:if test="${op == 'view'}">
					<td><input type="text" value="<%=user.getMobile()%>" disabled="disabled" /></td>
				</c:if>
			</tr>
			<tr>
				<td>Gender :</td>
				<td><input type="text" value="<%=user.getGender()%>" disabled="disabled"/></td>
			</tr>
			<tr>
				<td><button><a href="home.jsp">Back</a></button></td>
				<c:if test="${op == 'edit'}">
					<td><input type="submit" value="Update"/>
				</c:if>
			</tr>
		</table>
	</form>
	</div>
</body>
</html>