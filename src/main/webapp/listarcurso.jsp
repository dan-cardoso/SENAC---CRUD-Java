<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="br.com.cursoja.agendacurso.controller.CursoController" %>
<%@ page import="br.com.cursoja.agendacurso.model.entidade.Curso" %>  
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.text.DecimalFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<title>Listagem de Cursos</title>
</head>
<body>
	
	<a href="cadastrarcurso.jsp">Cadastrar Curso</a>
	
	<table class="table">
		<thead>
			<th scope="col">Nome</th>
			<th scope="col">Valor</th>
			<th scope="col">Ações</th>
		</thead>
		<tbody>
	<% 
		CursoController controller = new CursoController();
		ArrayList<Curso> lista = controller.listar("");
		
		DecimalFormat fmt = new DecimalFormat("###0.00"); //esse ponto muda para vírgula por causa do format de ponto de vista americano
		for (Curso c : lista) {
	%>	
			<tr>
				<td><%= c.getNome() %></td>
				<td><%= fmt.format(c.getValor()) %></td>
				<td>
				<a href="InicioAlteraCurso?id=<%= c.getId() %>">Alterar</a>		<!--  essa id é setada no inicioalteracurso -->
				<a href="ExcluirCurso?id=<%= c.getId() %>" onclick="if(!confirm('Deseja excluir esse Curso?')){return false}">Excluir</a></td>		<!--  é get porque está na url 	 -->
			</tr>
	
	<% } %>
		</tbody>
	</table>
</body>
</html>