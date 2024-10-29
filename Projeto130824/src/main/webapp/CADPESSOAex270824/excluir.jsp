<%@page import="org.libertas.PessoaDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		PessoaDAO p = new PessoaDAO();
		p.excluir(Integer.parseInt(request.getParameter("id")));
		response.sendRedirect("index.jsp");
	%>
</body>
</html>