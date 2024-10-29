<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Formulário</title>
		<link rel="stylesheet" href="../style.css">
	</head>
	<body>
        <form action = "resposta1.jsp" method = "post">
	 		<div class="div">
            	<h3>Formulário</h3>
	            <label for="txt">Digite seu nome: </label>
	            <input type="text" name="nome" id="txt">
	            <label for="txt1">Digite o ano de nascimento: </label>
	            <input type="text" name="ano" id="txt1">
	            <div class="divbotao">
	                <input class="botao" type="submit" name="somar" value="OK">
	                <input class="botao" type="button" name="limpar" value="Limpar">
	            </div>
        	</div>
           </form>
	</body>
</html>