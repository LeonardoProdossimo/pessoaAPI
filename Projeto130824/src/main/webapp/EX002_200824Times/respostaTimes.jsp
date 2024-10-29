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
			String time01 = request.getParameter("time01");
			int time01G = Integer.parseInt(request.getParameter("time01G"));
			String time02 = request.getParameter("time02");
			int time02G = Integer.parseInt(request.getParameter("time02G"));
			String resp = "";
			if(time01G > time02G){
				resp = "O time "+time01+" venceu a partida";
			}else if(time01G < time02G){
				resp = "O time "+time02+" venceu a partida";
			}else{
				resp = "Deu empate";
			}
		%>
		<div>
			<p>
				<%= resp %>
			</p>
		</div>
	</body>
</html>