<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Cadastro</title>
		<link rel="stylesheet" href="../style.css">
	</head>
	<body>
	<jsp:useBean id="p" class="org.libertas.Pessoa" scope="page"></jsp:useBean>
	<jsp:useBean id="pdao" class="org.libertas.PessoaDAO" scope="page"></jsp:useBean>
	<jsp:setProperty property="nome" name="p" param="nome"/>
	<jsp:setProperty property="telefone" name="p" param="telefone"/>
	<jsp:setProperty property="email" name="p" param="email"/>
	<jsp:setProperty property="cidade" name="p" param="cidade"/>
	${p = pdao.consultar(p.idPessoa)}
	
		<form action = "gravar.jsp" method = "post">
	 		<div class="div">
            	<h3>Cadastro</h3>
            	<input type="hidden" name="idpessoa" value="${p.idPessoa}">
            	
	            <label for="nome">Nome</label>
	            <input type="text" name="nome" id="txt" valu ="${p.nome}">
	            
	            <label for="tel">Telefone</label>
	            <input type="text" name="telefone" id="txt" value="${p.telefone}">
	            
	            <label for="email">Email</label>
	            <input type="text" name="email" id="txt" value="${p.email}">
	            
	            <label for="cid">Cidade</label>
	            <input type="text" name="cidade" id="txt" value="${p.cidade}">
	            
	            <div class="divbotao">
	                <input class="botao" type="submit" name="result" value="Cadastrar">
	            </div>
        	</div>
           </form>
	</body>
</html>