<%@page import="org.libertas.Pessoa"%>
<%@page import="org.libertas.PessoaDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Salvar</title>
	</head>
	<body>
		<%
			PessoaDAO dao = new PessoaDAO();
			Pessoa p = new Pessoa();
			p.setNome(request.getParameter("nome"));
			p.setTelefone(request.getParameter("tel"));
			p.setEmail(request.getParameter("email"));
			p.setCidade(request.getParameter("cid"));
			p.setEndereco(request.getParameter("endereco"));
			p.setCep(request.getParameter("cep"));
			
			p.setIdPessoa(Integer.parseInt(request.getParameter("idpessoa")));
			
			if(p.getIdPessoa() > 0){
				dao.alterar(p);
			}else{
				dao.inserir(p);
			}
		%>
		<h1>Pessoa salva com sucesso</h1>
		<br/>
		<a href="index.jsp">OK</a>
	</body>
</html>