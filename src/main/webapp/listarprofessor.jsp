<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="br.com.cursoja.agendacurso.controller.ProfessorController" %>
<%@ page import="br.com.cursoja.agendacurso.model.entidade.Professor" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.text.DecimalFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<title>Listagem de Professores</title>
</head>
<body>

	<a href="cadastrarprofessor.jsp">Cadastrar Professor</a>

<table class="table">
	<thead>
		<th scope="col">Nome: </th>
		<th scope="col">Valor Hora: </th>
		<th scope="col">Celular: </th>
		<th scope="col">Ações: </th>
	</thead>
		<tbody>
			<%
				ProfessorController controller = new ProfessorController();
				ArrayList<Professor> lista = controller.listar("");
		
				DecimalFormat fmt = new DecimalFormat("###0.00");
				for (Professor p : lista) {
			%>
				<tr>
					<td><%= p.getNome() %></td>
					<td><%= fmt.format(p.getValorHora()) %></td>
					<td><%= p.getCelular() %></td>
					<td>
					<a href="InicioAlteraProfessor?id=<%= p.getId() %>">Alterar</a> 
				<a href="ExcluirProfessor?id=<%= p.getId() %>" onclick="if(!confirm('Deseja excluir esse Professor?')){return false}">Excluir</a></td>
				</tr>
	
			<% } %>

		</tbody>
	</table>

	<!--  <form method="post" action="">
		<input type="text" name="nomebusca" />
		<input type="submit" name="pesquisar" />
	</form> -->
</body>
</html>