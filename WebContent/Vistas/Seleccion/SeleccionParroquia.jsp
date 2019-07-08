<%@page import="com.mysql.cj.util.EscapeTokenizer"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.bolsaDeEmpleo.estructuras.parroquia.Parroquia"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Selecci�n de Parroquia</title>
</head>
<body>

<h1>Bolsa de Empleo</h1>
<h2>Selecci�n de Artesano</h2>
<h3>Selecci�n de Parroquia</h3>
	<%
		ArrayList<Parroquia> parroquias = null;
		try {
			Parroquia parroquia = new Parroquia();
			parroquias = parroquia.listarParroquias();
		} catch (Exception e) {
			System.out.print("Hubo un error al obtener los datos: " + e);
		}
	%>
	<select>
		<option>Elegir parroquia</option>
		<%
			for (Parroquia parroquia : parroquias) {
		%>
		<option value="<%=parroquia.getIdParroquia()%>>"><%=parroquia.getNombreParroquia()%>
		</option>
		<%
			}
		%>
	</select>
	
	<a href="SeleccionServicio.jsp">Seleccionar Servicio</a>
</body>
</html>