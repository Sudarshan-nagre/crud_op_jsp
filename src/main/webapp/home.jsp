<%@page import="com.sud.bean.User"%>
<%@page import="com.sud.service.UserService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<link rel="stylesheet" href="css/app.css">
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="center">
		<a href="profile.jsp?op=view">View Profile</a> | 
		<a href="profile.jsp?op=edit">Edit Profile</a> | 
		<a href="search.jsp">Search Profile</a>
	</div>
</body>
</html>

