<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="br.com.cursoja.agendacurso.model.dao.Conexao" %>
<%@ page import="br.com.cursoja.agendacurso.model.dao.CursoDao" %>

<%@ page import="br.com.cursoja.agendacurso.model.entidade.Curso" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Página inicial</title>
</head>
<body>
	<h1>Olá mundo, agora na "web"</h1>
	
	<a href="cadastrarcurso.jsp">Cadastrar Curso</a><br>
	<a href="listarcurso.jsp">Listar Cursos</a><br>
	<a href="indexprofessor.jsp">Testes dos CRUD Professor</a>
	<%
		Conexao c = new Conexao();
		c.getConexao();
		
		c.fecharConexao();

	
	/*	Curso curso = new Curso();
		curso.setNome("Word");
		curso.setValor(300);
		
		
		Curso curso2 = new Curso();
		curso2.setNome("Datilografia");
		curso2.setValor(50);
	 */
		CursoDao dao = new CursoDao();
		//dao.cadastrar(curso);
		//dao.cadastrar(curso2);
	/*
		Curso cursoAlterar = new Curso();
		cursoAlterar.setNome("Office");
		cursoAlterar.setValor(500);
		cursoAlterar.setId(1);
		dao.alterar(cursoAlterar);
	*/
		ArrayList<Curso> cursos = dao.listar("");
		for(Curso a : cursos){ 
	%>
			<p><%= a.getNome() %></p>
	<% 
		}
		
		Curso unico = dao.buscar(1);
	%>
		<p><%= unico.getNome() %> - <%= unico.getValor() %>
		
</body>
</html>