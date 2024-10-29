<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="p" class="org.libertas.Pessoa" scope="page"></jsp:useBean>
	<jsp:useBean id="pdao" class="org.libertas.PessoaDAO" scope="page"></jsp:useBean>
	<jsp:setProperty property="nome" name="p" param="nome"/>
	<jsp:setProperty property="telefone" name="p" param="telefone"/>
	<jsp:setProperty property="email" name="p" param="email"/>
	<jsp:setProperty property="cidade" name="p" param="cidade"/>
	${pdao.excluir(p.idPessoa)}
	<h1>Registro excluido com sucesso!</h1>
	<a href="index.jsp">OK</a>
</body>
</html>