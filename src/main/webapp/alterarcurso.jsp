<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="br.com.cursoja.agendacurso.model.entidade.Curso" %>
<%@ page import="java.text.DecimalFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<title>Alterar Curso</title>
</head>
<body>

		<br><h3 align="left"><a href="index.jsp">Voltar ao Index</h3>

	<br><h1 align="center">Alterar Curso Cadastrado</h1><br>
	
  	<div class="container" widht="60%">
	<%
		Curso cursoAlterar = (Curso) request.getAttribute("curso");
		DecimalFormat fmt = new DecimalFormat("###0.00");
	%>

<form method="post" action="ExecutaAlteraCurso">
  <div class="mb-3">
    <label class="form-label">Nome do Curso: </label>
    <input type="text" class="form-control" name="nomeCurso" value=" <%= cursoAlterar.getNome() %> "/>
  </div>
  
  <div class="mb-3">
    <label class="form-label">Mensalidade: </label>
    <input type="number" class="form-control" name="mensalidade" value="<%= cursoAlterar.getValor() %>" step="0.01"/>
  </div>
  
	<input type="hidden" name="id" value="<%= cursoAlterar.getId() %>" />
  
  <button type="submit" class="btn btn-primary">Alterar</button>
</form>
</div>


</body>
</html>