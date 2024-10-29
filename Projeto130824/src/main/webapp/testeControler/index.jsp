<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Formulário</title>
		<link rel="stylesheet" href="../style.css">
	</head>
	<body>
        <form action = "controle.jsp" method = "post">
	 		<div class="div">
            	<h3>Formulário</h3>
	            <label for="usu">Usuário </label>
	            <input type="text" name="usu" id="txt">
	            
	            <label for="senha">Senha </label>
	            <input type="password" name="senha" id="txt">
	            <div class="divbotao">
	                <input class="botao" type="submit" name="result" value="Entrar">
	            </div>
        	</div>
           </form>
	</body>
</html>