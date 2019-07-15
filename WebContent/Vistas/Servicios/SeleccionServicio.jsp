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
<meta charset="UTF-8" />
<title>Selecciónn de Parroquia</title>
<link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" href="css/mi.css" />
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>

</head>
<body>

	<nav class="navbar navbar-expand-lg  navbar-dark bg-dark">
		<a class="navbar-brand" href="#">Registro de requerimiento de
			servicio</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
	</nav>
	<br />
	<div class="container">
		<h3>Por favor, seleccione el servicio que desea solicitar</h3>
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
		<div class="form-group">
			<form method="post" action="ComprobacionDisponibilidad.jsp">
				<select name="Servicio" required>
					<option value="">Elegir servicio</option>
					<%
						for (Servicio servicio : servicios) {
					%>
					<option value="<%=servicio.getIdServicio()%>"><%=servicio.getNombreServicio()%>
					</option>
					<%
						}
					%>
				</select>
				<h1>
					<%
						if (parroquia == null || parroquia.equals("Elegir parroquia")) {
					%>
					<h5>
						No se ha ingresado una parroquia, por favor regrese a la pantalla
						anterior y realice la selección <br />
					</h5>
					<%
						} else {
					%>
					<input type="text" value="<%=parroquia%>" name="Parroquia" hidden></h5>
					<%
						}
					%>
				</h1>
				<br /> <input type="submit"
					value="Registrar requerimiento de servicio"
					style="color: #fff; background-color: #0084da; border-color: #007ccd; border-radius: 20px;"
					class="btn btn-primary btn-block btn-lg" />
			</form>
		</div>
		<FORM NAME="buttonbar">
			<INPUT TYPE="button" VALUE="Regresar a seleccionar parroquia"
				onClick="history.back()"
				style="color: #fff; background-color: #0084da; border-color: #007ccd; border-radius: 20px;"
				class="btn btn-primary btn-block btn-lg">
		</FORM>
	</div>
</body>
</html>
