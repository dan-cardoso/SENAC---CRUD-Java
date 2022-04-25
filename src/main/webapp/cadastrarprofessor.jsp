<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<title>Cadastro de Professores</title>
</head>
<body>

	<br><h3 align="left"><a href="index.jsp">Voltar ao Index</h3>

	<br><h1 align="center">Cadastro de Novo Professor</h1><br>

  	<div class="container" widht="60%">
  	
  	<form method="post" action="ProfessorServlet">
  <div class="mb-3">
    <label class="form-label">Nome do Professor: </label>
    <input type="text" class="form-control" name="nomeprofessor" required />
  </div>
  
    <div class="mb-3">
    <label class="form-label">Celular: </label>
    <input type="text" class="form-control" name="celular" required />
  </div>
  
  <div class="mb-3">
    <label class="form-label">Valor Hora-Aula: </label>
    <input type="number" class="form-control" name="valorhora" required step="0.01" />
  </div>
  

  	<button type="submit" class="btn btn-primary">Cadastrar Professor</button>
</form>
</div>


</body>
</html>