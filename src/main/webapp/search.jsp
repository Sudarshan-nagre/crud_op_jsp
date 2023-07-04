<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>search</title>
<link rel="stylesheet" href="css/app.css">
</head>
<body>
	<jsp:include page="header.jsp" />

	<div class="center">
		<h3>Search Form</h3>
		<form method="post" action="search_result.jsp">
			<table border="0.5" style="background-color: white">
				<tr>
					<td>Search :</td>
					<td><input type="text" name="search"
						placeholder="Search by rollNo, Name, Email, Address" required /></td>
				</tr>
				<tr>
					<td><input type="submit" value="Search"></td>
					<td><button>
							<a href="home.jsp">Back</a>
						</button></td>
				</tr>
			</table>
		</form>

	</div>

</body>
</html>