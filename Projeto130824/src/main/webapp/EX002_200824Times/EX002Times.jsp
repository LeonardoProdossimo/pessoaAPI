<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Formulário</title>
		<link rel="stylesheet" href="../style.css">
	</head>
	<body>
        <form action = "respostaTimes.jsp" method = "post">
	 		<div class="div">
            	<h3>Formulário</h3>
	            <label for="time01">Time 01: </label>
	            <input type="text" name="time01" id="txt">
	            <label for="time01G">Qtd Gols Time 01: </label>
	            <input type="number" name="time01G" id="txt">
	             <label for="time02">Time 02: </label>
	            <input type="text" name="time02" id="txt">
	            <label for="time02G">Qtd Gols Time 02: </label>
	            <input type="number" name="time02G" id="txt">
	            <div class="divbotao">
	                <input class="botao" type="submit" name="result" value="OK">
	            </div>
        	</div>
           </form>
	</body>
</html>