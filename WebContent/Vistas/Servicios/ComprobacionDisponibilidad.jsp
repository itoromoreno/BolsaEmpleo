<%@page
	import="com.bolsaDeEmpleo.estructuras.requerimientoServicio.RequerimientoServicio"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Comprobación de Disponibilidad</title>
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
	<%
		String parroquia;
		String servicio;
		try {
			parroquia = request.getParameter("Parroquia");
			servicio = request.getParameter("Servicio");
		} catch (Exception e) {
			parroquia = "";
			servicio = "";
		}
	%>

	<div class="container">
		<div class="form-group">
			<h3>Disponibilidad de artesanos</h3>
			<%
				if (parroquia == null || servicio == null || servicio.equals("0")) {
			%>
			<form action="SeleccionCanton.jsp">
				<h4>Hubo un error al obtener los datos de servicio o parroquia,
					por favor vuelva a intentarlo</h4>
				<input type="submit" value="Seleccionar Cantón"
					style="color: #fff; background-color: #0084da; border-color: #007ccd; border-radius: 20px;"
					class="btn btn-primary btn-block btn-lg">
			</form>
			<%
				} else {
					int cantidadArtesanos = RequerimientoServicio.obtenerCantidadArtesanos(parroquia, servicio);
					if (cantidadArtesanos > 0) {
			%>

			<form action="ComprobacionRegistro.jsp">
				<h4>
					Buenas noticias, existen
					<%=cantidadArtesanos%>
					artesanos que ofrecen el servicio solicitado
				</h4>
				<label name="label comentario">Ingresar comentario:</label>
				<br/>
				<textarea name="Comentario" cols="75" rows="5"></textarea>
				<br/><br/>
				<input type="text" value=<%=parroquia%> name="Parroquia" hidden>
				<input type="text" value=<%=servicio%> name="Servicio" hidden>
				<input type="submit" value="Registrar Requerimiento de Servicio"
					style="color: #fff; background-color: #0084da; border-color: #007ccd; border-radius: 20px;"
					class="btn btn-primary btn-block btn-lg">
			</form>
			<%
				} else {
			%>
			<h4>Malas noticias, no existen artesanos que ofrezcan el
				servicio solicitado</h4>
			<%
				}
				}
			%>

		</div>

		<FORM NAME="buttonbar">
			<INPUT TYPE="button" VALUE="Regresar a seleccionar servicio"
				onClick="history.back()"
				style="color: #fff; background-color: #0084da; border-color: #007ccd; border-radius: 20px;"
				class="btn btn-primary btn-block btn-lg">
		</FORM>
	</div>
</body>
</html>