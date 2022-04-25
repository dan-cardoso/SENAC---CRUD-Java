<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="br.com.cursoja.agendacurso.model.entidade.Professor" %>
<%@ page import="java.text.DecimalFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Alterar Professor</title>
</head>
<body>

	<%
		Professor professorAlterar = (Professor) request.getAttribute("professor");
		DecimalFormat fmt = new DecimalFormat("##0.00");
	%>

	<form method="post" action="ExecutaAlteraProfessor">
	<label>Nome: </label>
	<input type="text" name="nomeProfessor" value=" <%= professorAlterar.getNome() %> " />
	
	<label>Valor Hora-Aula: </label>
	<input type="number" name="valorhora" value="<%= professorAlterar.getValorHora() %>" step="0.01" />
	
	<label>Celular: </label>
	<input type="text" name="celular" value=" <%= professorAlterar.getCelular() %> " />
	
	<input type="hidden" name="id" value="<%= professorAlterar.getId() %>" />
	
	<input type="submit" name="Alterar" />
	</form>
</body>
</html>