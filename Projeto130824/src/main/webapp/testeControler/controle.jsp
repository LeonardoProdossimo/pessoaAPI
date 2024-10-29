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
			String usu = request.getParameter("usu");
			String senha = request.getParameter("senha");
			if(usu.equals("admin") && senha.equals("123")){
				response.sendRedirect("admin.jsp");
			}else if(usu.equals("ze") && senha.equals("123")){
				response.sendRedirect("normal.jsp");
			}else{
				response.sendRedirect("invalido.jsp");
			}
		%>
	</body>
</html>