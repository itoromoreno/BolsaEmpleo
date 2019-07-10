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
<title>Selección de Parroquia</title>
</head>
<body>

	<h1>Bolsa de Empleo</h1>
	<h2>Selección de Artesano</h2>
	<h3>Selección de Parroquia</h3>
	<%
	String canton;
	try {
		canton = request.getParameter("Canton");
	} catch (Exception e) {
		canton = " ";
	}
		ArrayList<Parroquia> parroquias = null;
		try {
			Parroquia parroquia = new Parroquia();
			parroquias = parroquia.listarParroquias(canton);
		} catch (Exception e) {
			System.out.print("Hubo un error al obtener los datos: " + e);
		}
	%>

	<form method="post" action="SeleccionServicio.jsp">
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
		</select> <br/> <input type="submit" value="Seleccionar Servicio"/>
	</form>
	
	<form action="SeleccionCanton.jsp">
	<input type="submit" value="Regresar a seleccionar cantón"/>
	</form>
</body>
</html>