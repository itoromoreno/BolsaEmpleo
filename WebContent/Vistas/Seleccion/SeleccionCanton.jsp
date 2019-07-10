<%@page import="com.bolsaDeEmpleo.estructuras.canton.Canton"%>
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
<title>Selección de Cantón</title>
</head>
<body>

	<h1>Bolsa de Empleo</h1>
	<h2>Registro de solicitud de servicio</h2>
	<h3>Selección de Cantón</h3>
	<%
		ArrayList<Canton> cantones = null;
		try {
			Canton canton = new Canton();
			cantones = canton.listarCantones();
		} catch (Exception e) {
			System.out.print("Hubo un error al obtener los datos: " + e);
		}
	%>
	<form method="post" action="SeleccionParroquia.jsp">

		<select name="Canton">
			<option>Elegir Cantón</option>
			<%
				for (Canton canton : cantones) {
			%>
			<option value="<%=canton.getIdCanton()%>"><%=canton.getNombreCanton()%>
			</option>
			<%
				}
			%>
		</select> <br /> <input type="submit" value="Seleccionar Parroquia"/>
	</form>
	
	<form action="../index.html">
	<input type="submit" value="Regresar a pantalla principal"/>
	</form>
</body>
</html>