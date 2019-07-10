<%@page import="com.bolsaDeEmpleo.estructuras.servicio.Servicio"%>
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
	<h3>Selección de Servicio</h3>
	<%
		String parroquia;
		try {
			parroquia = request.getParameter("Parroquia");
		} catch (Exception e) {
			parroquia = " ";
		}
		ArrayList<Servicio> servicios = null;
		try {
			Servicio servicio = new Servicio();
			servicios = servicio.listarServicios();
		} catch (Exception e) {
			System.out.print("Hubo un error al obtener los datos: " + e);
		}
	%>
	<form method="post" action="SeleccionServicio.jsp">
		<select>
			<option>Elegir servicio</option>
			<%
				for (Servicio servicio : servicios) {
			%>
			<option value="<%=servicio.getIdServicio()%>>"><%=servicio.getNombreServicio()%>
			</option>
			<%
				}
			%>
		</select>
		<h1><%=parroquia%></h1>
		<br /> <input type="submit"
			value="Registrar requerimiento de servicio" />
	</form>

	<FORM NAME="buttonbar">
		<INPUT TYPE="button" VALUE="Regresar a seleccionar parroquia"
			onClick="history.back()">
	</FORM>
</body>
</html>
