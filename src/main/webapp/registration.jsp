<%@page import="com.sud.service.UserService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
</head>
<body>
	<jsp:useBean id="user" class="com.sud.bean.User"></jsp:useBean>
	<jsp:setProperty property="*" name="user" />

	<%
	String result = new UserService().registration(user);
	%>

	<c:if test="${result !='false'}">
		<h2>
			<center>
				<font color="green">Registration Success !!! Thank you </font>
			</center>
		</h2>
		<jsp:include page="login.html" />
	</c:if>

	<c:if test="${result =='false'}">
		<h2>
			<center>
				<font color="red">Registration Failed, Please try again !</font>
			</center>
		</h2>
		<jsp:include page="registration.html" />
	</c:if>

</body>
</html>