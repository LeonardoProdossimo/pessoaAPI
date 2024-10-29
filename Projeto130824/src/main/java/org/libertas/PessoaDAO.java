package org.libertas;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;

public class PessoaDAO {
	private static LinkedList<Pessoa> lista = new LinkedList<Pessoa>();
	Conexao con = new Conexao();
	Retorno r = new Retorno();
	
	public void salvar(Pessoa p) {
		if(p.getIdPessoa() > 0) {
			alterar(p);
		}else {
			inserir(p);
		}
	}
	
	public Retorno inserir(Pessoa p) {
//		lista.add(p);
		
		try {
			String sql = "INSERT INTO pessoa (nome, telefone, email, cidade, endereco, cep) VALUES "
					+ "(?, ?, ?, ?, ?, ?);";
			
			PreparedStatement prep = con.getCon().prepareStatement(sql);
			prep.setString(1, p.getNome());
			prep.setString(2, p.getTelefone());
			prep.setString(3, p.getEmail());
			prep.setString(4, p.getCidade());
			prep.setString(5, p.getEndereco());
			prep.setString(6, p.getCep());
			
			prep.execute();
		} catch (SQLException e) {
			e.printStackTrace();
			r.setSucesso(false);
		}finally {
			r.setMensagem((r.getSucesso() ? "Deu bom" : "Deu ruim"));
			con.desconecta();
		}
		return r;
	}
	
	public LinkedList<Pessoa> listar() {
		lista = new LinkedList<Pessoa>();
		try {
			String sql = "SELECT * FROM pessoa";
			Statement sta = con.getCon().createStatement();
			ResultSet res = sta.executeQuery(sql);
			while(res.next()) {
				Pessoa p = new Pessoa();
				p.setIdPessoa(res.getInt("idpessoa"));
				p.setNome(res.getString("nome"));
				p.setTelefone(res.getString("telefone"));
				p.setEmail(res.getString("email"));
				p.setCidade(res.getString("cidade"));
				p.setEndereco(res.getString("endereco"));
				p.setCep(res.getString("cep"));
				lista.add(p);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		con.desconecta();
		return lista;
	}
	
	public Retorno alterar(Pessoa p) {
		try {
			String sql = "UPDATE pessoa SET nome = ?, telefone = ?, email = ?, cidade = ?, endereco = ?, cep = ? WHERE idpessoa = ?";
			
			PreparedStatement prep = con.getCon().prepareStatement(sql);
			prep.setString(1, p.getNome());
			prep.setString(2, p.getTelefone());
			prep.setString(3, p.getEmail());
			prep.setString(4, p.getCidade());
			prep.setString(5, p.getEndereco());
			prep.setString(6, p.getCep());
			prep.setInt(7, p.getIdPessoa());
			
			prep.execute();
		} catch (SQLException e) {
			e.printStackTrace();
			r.setSucesso(false);
		}finally {
			r.setMensagem((r.getSucesso() ? "Deu bom" : "Deu ruim"));
			con.desconecta();
		}
		return r;
	}
	
	public Retorno excluir(int id) {
		try {
			String sql = "DELETE FROM pessoa WHERE idpessoa = "+id+";";
			
			PreparedStatement prep = con.getCon().prepareStatement(sql);
			prep.setInt(1, id);
			
			prep.execute();
		} catch (SQLException e) {
			e.printStackTrace();
			r.setSucesso(false);
		}finally {
			r.setMensagem((r.getSucesso() ? "Deu bom" : "Deu ruim"));
			con.desconecta();
		}
		return r;
	}
	
	public Pessoa consultar(int id) {
		Pessoa p = new Pessoa();
		try {
			String sql = "SELECT * FROM pessoa WHERE idpessoa = "+id+";";
			Statement sta = con.getCon().createStatement();
			ResultSet res = sta.executeQuery(sql);
			if(res.next()) {
				p.setIdPessoa(res.getInt("idpessoa"));
				p.setNome(res.getString("nome"));
				p.setTelefone(res.getString("telefone"));
				p.setEmail(res.getString("email"));
				p.setCidade(res.getString("cidade"));
				p.setEndereco(res.getString("endereco"));
				p.setCep(res.getString("cep"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		con.desconecta();
		return p;
	}
}
