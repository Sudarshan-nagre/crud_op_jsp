<%@page import="com.sud.bean.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/app.css">
</head>
<body>
	<%
	User user = (User) session.getAttribute("user");
	%>
	<div class="header">Welcome <%=user.getName()%> | <a href="LogoutServlet" style="text-decoration:none">Logout</a></div>
	<hr>
</body>
</html>