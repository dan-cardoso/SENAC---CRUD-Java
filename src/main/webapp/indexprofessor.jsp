<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="br.com.cursoja.agendacurso.model.dao.Conexao" %>
<%@ page import="br.com.cursoja.agendacurso.model.dao.ProfessorDao" %>
<%@ page import="br.com.cursoja.agendacurso.model.entidade.Professor" %>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Testes dos CRUD Professor</title>
</head>
<body>
	<h2>Professores CursoJa</h2>
	
	<a href="cadastrarprofessor.jsp">Cadastrar Professor</a>
	
	<%  //////////////////////////////////////////////////////////////// CADASTRAR
		Conexao c = new Conexao();
		c.getConexao();
		
		c.fecharConexao();
		
		Professor professor = new Professor();
		professor.setNome("Girafales");
		professor.setValorHora(45);
		professor.setCelular("98765432");
		
		
		Professor professor2 = new Professor();
		professor2.setNome("Plutônio");
		professor2.setValorHora(50);
		professor2.setCelular("98765432");
		
		Professor professor3 = new Professor();
		professor3.setNome("Raimundo");
		professor3.setValorHora(25);
		professor3.setCelular("92345678");
		
		ProfessorDao dao = new ProfessorDao();
		//dao.cadastrar(professor);
		//dao.cadastrar(professor2);
		//dao.cadastrar(professor3);
		%>
		<h3>Cadastro Funcionando (professor 1, 2 e 3) e já colocado como "comentário" </h3><br>
		
	<%  //////////////////////////////////////////////////////////////// UPDATE
	
		Professor professorAlterar = new Professor();
		professorAlterar.setNome("Guy");
		professorAlterar.setValorHora(55);
		professorAlterar.setCelular("9555555");
		professorAlterar.setId(2);
		dao.alterar(professorAlterar);
	%>
		<h3>Update Professor 2 Funcionou! </h3><br>

		
	<%	//////////////////////////////////////////////////////////////// LISTAR POR ARRAYLIST %>
		<h3>Listagem de Professores Por ArrayList</h3> <%
		ArrayList<Professor> professores = dao.listar("");
		for(Professor a : professores){ 
	%>
			<p><%= a.getNome() %> - <%= a.getCelular() %> </p> <%
		}	
		
		
		
		//////////////////////////////////////////////////////////////// BUSCAR PROFESSOR
				Professor unico = dao.buscar(1);
	%>	<br><h3>Busca por Professor Id=1 Funcionando</h3>
		<p><%= unico.getId() %> - <%= unico.getNome() %> - <%= unico.getValorHora() %> - <%= unico.getCelular() %></p>
		
		
		
	<%	//////////////////////////////////////////////////////////////// DELETAR PROFESSOR
		professor3.setId(3);
		dao.excluir(professor3);
	%>	<h3>Professor 3 Excluído COM SUCESSO!</h3>
		
		
</body>
</html>