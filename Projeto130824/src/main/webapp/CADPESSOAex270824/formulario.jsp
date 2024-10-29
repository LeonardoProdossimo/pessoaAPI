<%@page import="org.libertas.PessoaDAO"%>
<%@page import="org.libertas.Pessoa"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Cadastro</title>
		<link rel="stylesheet" href="style.css">
	</head>
	<body>
		
		<%
			int idpessoa = Integer.parseInt(request.getParameter("id"));
			Pessoa p = new Pessoa();
			PessoaDAO pdao = new PessoaDAO();
			if(idpessoa > 0){
				p = pdao.consultar(idpessoa);
			}else{
				p.setNome("");
				p.setTelefone("");
				p.setEmail("");
				p.setCidade("");
				p.setEndereco("");
				p.setCep("");
			}
		%>
		
		<form action = "gravar.jsp" method = "post">
			<input type="hidden" name="idpessoa" value="<%= p.getIdPessoa() %>"/>
	 		<div class="div">
            	<h3>Cadastro</h3>
	            <label for="nome">Nome</label>
	            <input type="text" name="nome" value="<%=p.getNome() %>" id="txt">
	            
	            <label for="tel">Telefone</label>
	            <input type="text" name="tel" value="<%=p.getTelefone() %>" id="txt">
	            
	            <label for="email">Email</label>
	            <input type="text" name="email" value="<%=p.getEmail() %>" id="txt">
	            
	            <label for="cid">Cidade</label>
	            <input type="text" name="cid" value="<%=p.getCidade() %>" id="txt">
	            
	            <label for="endereco">Endereço</label>
	            <input type="text" name="endereco" value="<%=p.getEndereco() %>" id="txt">
	            
	            <label for="cep">CEP</label>
	            <input type="text" name="cep" value="<%=p.getCep() %>" id="txt">
	            
	            <div class="divbotao">
	                <input class="botao" type="submit" name="result" value="Cadastrar">
	            </div>
        	</div>
           </form>
	</body>
</html>