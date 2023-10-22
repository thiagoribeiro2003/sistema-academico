<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@ page import="br.edu.exemplo.model.Aluno"%>
<%@ page import="br.edu.exemplo.controller.ServletAluno"%>


<!DOCTYPE html>
<html>
<head>
<title>Lista Alunos</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
	<h1 class="text-center">Lista de Alunos</h1>
			<table width="60%" border="1" class="table caption-top table-hover table-striped d-flex justify-content-center">	
				<tr>
					<th scope="col">RA - Aluno</th>
					<th scope="col">Nome</th>
					<th scope="col">Endereço</th>
					<th scope="col">E-mail</th>
					<th scope="col">Nascimento</th>
					<th scope="col">Periodo</th>
					<th scope="col">Configurar</th>
					
				</tr>
				<%
				SimpleDateFormat data = new SimpleDateFormat("dd/MM/yyyy");
				List<Aluno> lista = new ArrayList<Aluno>();
				lista = (ArrayList) request.getAttribute("alunosList");
				for (Aluno a : lista) {
				%>
				<tr>
					<td><%=a.getRa()%></td>
					<td><%=a.getNome()%></td>
					<td><%=a.getEndereco()%></td>
					<td><%=a.getEmail()%></td>
					<td><%=data.format(a.getDataNascimento())%></td>
					<td><%=a.getPeriodo()%></td>
					<td>
					
						<a class="btn btn-primary" href="ServletAluno?cmd=atualizar&ra=<%=a.getRa()%>">Atualizar</a>
						<a class="btn btn-danger" href="ServletAluno?cmd=excluir&ra=<%=a.getRa()%>">Excluir</a>
					
					<!-- 	
						<form action="ServletAluno?cmd=excluir=<%=a.getRa()%>" method="post">
				            <input type="hidden" name="txtRa" value="">
				            <button type="submit" class="btn btn-danger">Excluir</button>
	        			</form>
					-->		
						
						
						
						
						
					</td>
				</tr>									
		
				<% } %>
			</table>
	<a class="d-flex justify-content-center" href="index.html">Página Principal</a>
</body>
</html>

