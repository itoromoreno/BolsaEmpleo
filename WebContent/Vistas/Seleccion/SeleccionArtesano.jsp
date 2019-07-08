<%@page import="com.bolsaDeEmpleo.estructuras.artesano.Artesano"%>
<%@page import="com.mysql.cj.util.EscapeTokenizer"%>
<%@page import="java.util.ArrayList"%>
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
<title>Selección de Parroquia</title>
</head>
<body>

<h1>Bolsa de Empleo</h1>
<h2>Selección de Artesano</h2>
<h3>Selección de Artesano</h3>
	<%
		ArrayList<Artesano> artesanos = null;
		try {
			Artesano artesano = new Artesano();
			artesanos = artesano.listarArtesanos();
		} catch (Exception e) {
			System.out.print("Hubo un error al obtener los datos: " + e);
		}
	%>
	<select>
		<option>Elegir Artesano</option>
		<%
			for (Artesano artesano : artesanos) {
		%>
		<option value="<%=artesano.getCodigoPersona()%>>"><%=artesano.getNombres()%> <%=artesano.getApellidos()%>
		</option>
		<%
			}
		%>
	</select>
	
	<a href="../index.html">Finalizar Seleccion</a>
</body>
</html>