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
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<title>Curso Ja</title>
</head>
<body>
	<br>
	<h1 align="center">CursoJa</h1>
	<p align="center"><a href="indexprofessor.jsp">Testes dos CRUDs Professor</a></p> <br><br>

  <div class="container" widht="80%">
	<div class="row">
	    
    	<div class="col-sm-6"><a href="listarcurso.jsp">
    		<div class="card" style="background-image: url('https://blog.trivium.com.br/wp-content/uploads/2019/11/309708-formacao-continuada-de-professores-qual-a-importancia-1536x1060.jpg'); background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;">
      			<div class="card-body">
        			<br><h4 class="card-title" style="color: white; text-shadow: black 0.1em 0.1em 0.2em;">Cursos Cadastrados</h4><br><br>
      			</div>
    		</div></a>
  		</div>
  		
    	<div class="col-sm-6"><a href="listarprofessor.jsp">
    		<div class="card" style="background-image: url('https://blog.trivium.com.br/wp-content/uploads/2019/11/309708-formacao-continuada-de-professores-qual-a-importancia-1536x1060.jpg'); background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;">
      			<div class="card-body">
        			<br><h4 class="card-title" style="color: white; text-shadow: black 0.1em 0.1em 0.2em; text-align: right">Professores Cadastrados</h4><br><br>
        		</div>
    		</div></a>
  		</div>
   </div>
  </div>
	
	<%
		Conexao c = new Conexao();
		c.getConexao();
		
		c.fecharConexao();

		CursoDao dao = new CursoDao();
%>
		
</body>
</html>