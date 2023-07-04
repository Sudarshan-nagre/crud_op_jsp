<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Result</title>
<link rel="stylesheet" href="css/app.css">
</head>
<body>
	<jsp:include page="search.jsp"></jsp:include><br><br>
	<div>
		<sql:setDataSource var="db" driver="com.mysql.cj.jdbc.Driver"
			url="jdbc:mysql://localhost:3306/demo?zeroDateTimeBehavior=convertToNull"
			user="root" password="password" />

		<c:set var="search" value="${param.search}" />

		<sql:query dataSource="${db}" var="data">  
		SELECT * from user where (rollNo=${search});  
	</sql:query>

		<table id="users">
			<tr>
				<th>RollNo</th>
				<th>Name</th>
				<th>Gender</th>
				<th>Email</th>
				<th>Address</th>
				<th>Mobile</th>
			</tr>
			<c:forEach var="row" items="${data.rows}">
				<tr>
					<td><c:out value="${row.rollNo}" /></td>
					<td><c:out value="${row.name}" /></td>
					<td><c:out value="${row.gender}" /></td>
					<td><c:out value="${row.email}" /></td>
					<td><c:out value="${row.address}" /></td>
					<td><c:out value="${row.mobile }" /></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>