package org.libertas;

import java.io.IOException;
import java.util.stream.Collectors;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

/**
 * Servlet implementation class PessoaAPI
 */
@WebServlet("/PessoaAPI/*")
public class PessoaAPI extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public PessoaAPI() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PessoaDAO pdao = new PessoaDAO();
		Gson gson = new Gson();
		
		Integer id = null;
		try {
			id = Integer.parseInt(request.getPathInfo().substring(1));
		}catch (Exception e) {
			// TODO: handle exception
		}
		
		response.setHeader("content-type", "application/json");
		if(id == null) {
			response.getWriter().print(gson.toJson(pdao.listar()));
		}else {
			response.getWriter().print(gson.toJson(pdao.consultar(id)));
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String body = request.getReader().lines().collect(Collectors.joining(System.lineSeparator()));
		
		Gson gson = new Gson();
		Pessoa p = gson.fromJson(body, Pessoa.class);
		PessoaDAO pdao = new PessoaDAO();
		
		response.setHeader("content-type", "application/json");
		response.getWriter().print(gson.toJson(pdao.inserir(p)));
	}

	protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String body = request.getReader().lines().collect(Collectors.joining(System.lineSeparator()));
		
		Gson gson = new Gson();
		PessoaDAO pdao = new PessoaDAO();
		Pessoa p = gson.fromJson(body, Pessoa.class);
		
		response.setHeader("content-type", "application/json");
		response.getWriter().print(gson.toJson(pdao.alterar(p)));
	}
	
	protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PessoaDAO pdao = new PessoaDAO();
		Gson gson = new Gson();
		
		Integer id = null;
		try {
			id = Integer.parseInt(request.getPathInfo().substring(1));
		}catch (Exception e) {
			String resp = "ID obrigatório!";
			response.getWriter().print(resp);
			return;
		}
		
		response.setHeader("content-type", "application/json");
		response.getWriter().print(gson.toJson(pdao.excluir(id)));
	}
}
