<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="extranaCalculadora.calculadora2" %>
<%@ page import="extranaCalculadora.Operacion" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Calculadora Extrana</h1>
<form action="calculadora2.jsp" method="post">
	<input type="text" name="numero">
	<select name="operator" value="operator">
		<option value="+">+</option>
		<option value="-">-</option>
	</select> 
	<button type="submit" value="accion" name="anadir">anadir</button>
	<button type="submit" value="accion" name="borrar">borrar</button>
	<button name="calcular">Calcular</button>
	<%
	String operador = request.getParameter("operator");
	String numeroStr = request.getParameter("numero");
	String area = request.getParameter("area");
		
	area += numeroStr+operador;
		
	%>
<div>
	<textarea name="area">
		<%= area %>
	</textarea>
</div>
</form>
</body>
</html>