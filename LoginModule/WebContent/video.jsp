<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Video</title>
</head>
<body>
	<%
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
		response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
		response.setHeader("Expires", "0"); // Proxies.

		if (session.getAttribute("userName") == null) {
			response.sendRedirect("login.jsp");
		}
	%>

	<h1>Video Links:</h1>
	<br>


	<iframe width="560" height="315"
		src="https://www.youtube.com/embed/aJOTlE1K90k" frameborder="0"
		allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
		allowfullscreen></iframe>

	<iframe width="560" height="315"
		src="https://www.youtube.com/embed/aJOTlE1K90k" frameborder="0"
		allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
		allowfullscreen></iframe>

	<br> <br>
	<form action="Logout">
		<input type="submit" value="logout">
	</form>
</body>
</html>