<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Response</title>
	</head>
	<body>
		<%@ page import="java.lang.Integer" %>
		<%
			String n = request.getParameter("nome");
			int a = Integer.parseInt(request.getParameter("ano"));
		%>
		<div>
			<p>
				<%= n %> nasceu no ano de <%= a %> e tem <%= 2024 - a %> anos de idade!
			</p>
		</div>
	</body>
</html>