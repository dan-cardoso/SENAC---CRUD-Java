package br.com.cursoja.agendacurso.model.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import br.com.cursoja.agendacurso.model.entidade.Professor;

public class ProfessorDao extends Conexao {

	/////////CADASTRAR
	public void cadastrar(Professor p) {
		String sql = "insert into professor (nome, valorhora, celular) values (?, ?, ?)";
		
		try {
			PreparedStatement ps = getConexao().prepareStatement(sql);
			ps.setString(1, p.getNome());
			ps.setDouble(2, p.getValorHora());
			ps.setString(3, p.getCelular());
			ps.execute();
			
		} catch (SQLException e) {
			System.out.println("Ocorreu um erro ao tentar o Insert");
			e.printStackTrace();
		} finally {
			fecharConexao();
		}
	}
	
	//////////UPDATE
	public void alterar(Professor p) {
		String sql = "update professor set nome = ?, valorhora = ?, celular = ? where idprofessor = ?";
		
		
 		try {
			PreparedStatement ps = getConexao().prepareStatement(sql);
			ps.setString(1,  p.getNome() );
			ps.setDouble(2, p.getValorHora());
			ps.setString(3, p.getCelular());
			ps.setLong(4, p.getId());
			ps.execute();
			
		} catch(SQLException e) {
			System.out.println("Erro ao Tentar Atualizar o Banco");
			e.printStackTrace();
		} finally {
			fecharConexao();
		}
	}
	

	///////ARRAY LISTAR

	public ArrayList<Professor> listar(String nomeBusca){
		ArrayList<Professor> lista = new ArrayList<Professor>();
		
		String sql = "select * from professor where nome like ?";
						
		try {
			PreparedStatement ps = getConexao().prepareStatement(sql);
			ps.setString(1, "%" + nomeBusca + "%");
			
			ResultSet rs = ps.executeQuery();
			Professor p;
			while (rs.next()) {
				p = new Professor();
				p.setId(rs.getLong("idprofessor"));
				p.setNome(rs.getString("nome"));
				p.setValorHora(rs.getDouble("valorhora"));
				p.setCelular(rs.getString("celular"));
				
				lista.add(p);
			}
			
		} catch(SQLException e) { 
			System.out.println("Erro ao tentar Listar Professores");
			e.printStackTrace();
		} finally {
			fecharConexao();
		}
		return lista;
	}
	
	
	/////// BUSCAR 
	public Professor buscar(long id) {
		Professor professor = null;
		
		String sql = "select * from professor where idprofessor = ?";
		
		try {
			PreparedStatement ps = getConexao().prepareStatement(sql);
			ps.setLong(1, id);

			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				professor = new Professor();
				professor.setId(rs.getLong("idprofessor"));
				professor.setNome(rs.getString("nome"));
				professor.setValorHora(rs.getDouble("valorhora"));
				professor.setCelular(rs.getString("celular"));
			}
			
		} catch(SQLException e) { 
			System.out.println("Erro ao tentar Listar Professores");
			e.printStackTrace();
		} finally {
			fecharConexao();
		}

		return professor;
	}
	

	/////////// DELETAR
	
	public void excluir(Professor p) {
		String sql = "delete from professor where idprofessor = ?";
		
		try {
			PreparedStatement ps = getConexao().prepareStatement(sql);
			ps.setLong(1, p.getId());
			
			ps.execute();
		} catch(SQLException e) {
			System.out.println("Erro ao tentar Excluir Professor");
			e.printStackTrace();
		} finally {
			fecharConexao();
		}
	}
}

	
