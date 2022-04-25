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

<title>Professores</title>
</head>
<body>

		<br><h3 align="left"><a href="index.jsp">Voltar ao Index</h3>

	<br><h1 align="center">Professores Cadastrados</h1><br>

  <div class="container" widht="60%">
	<table class="table table-success table-striped">
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
					<p><a href="InicioAlteraProfessor?id=<%= p.getId() %>">Alterar</a> | 
				<a href="ExcluirProfessor?id=<%= p.getId() %>" onclick="if(!confirm('Deseja excluir esse Professor?')){return false}">Excluir</a></p></td>
				</tr>
	
			<% } %>

		</tbody>
	</table>
		<div class=buttoncontainer align="right">
			<a href="cadastrarprofessor.jsp" type="button" class="btn btn-outline-success">Cadastrar Professor</a>
		</div>	
	</div>
	
	
	<!--  <form method="post" action="">
		<input type="text" name="nomebusca" />
		<input type="submit" name="pesquisar" />
	</form> -->
</body>
</html>