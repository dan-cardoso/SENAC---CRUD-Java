<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="br.com.cursoja.agendacurso.model.entidade.Professor" %>
<%@ page import="java.text.DecimalFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<title>Alterar Professor</title>
</head>
<body>

	<br><h3 align="left"><a href="index.jsp">Voltar ao Index</h3>
	
	<br><h1 align="center">Alterar Professor Cadastrado</h1><br>
	
  	<div class="container" widht="60%">

	<%
		Professor professorAlterar = (Professor) request.getAttribute("professor");
		DecimalFormat fmt = new DecimalFormat("##0.00");
	%>


<form method="post" action="ExecutaAlteraProfessor">
  <div class="mb-3">
    <label class="form-label">Nome do Professor: </label>
    <input type="text" class="form-control" name="nomeProfessor" value=" <%= professorAlterar.getNome() %> "/>
  </div>
  
  <div class="mb-3">
    <label class="form-label">Valor Hora-Aula: </label>
    <input type="number" class="form-control" name="valorhora" value="<%= professorAlterar.getValorHora() %>" step="0.01"/>
  </div>
  
    <div class="mb-3">
    <label class="form-label">Celular: </label>
    <input type="text" class="form-control" name="celular" value=" <%= professorAlterar.getCelular() %> "/>
  </div>
  
	<input type="hidden" name="id" value="<%= professorAlterar.getId() %>" />
  
  <button type="submit" class="btn btn-primary">Alterar</button>
</form>
</div>

	
</body>
</html>