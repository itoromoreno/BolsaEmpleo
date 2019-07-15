<%@page
	import="com.bolsaDeEmpleo.estructuras.requerimientoServicio.RequerimientoServicio"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Comprobación de Registro</title>
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
		<form action="../../index.jsp"">
	<%
		String parroquia = request.getParameter("Parroquia");
		String servicio = request.getParameter("Servicio");
		boolean registroCorrecto = false;
		try {
			registroCorrecto = RequerimientoServicio.registrarRequerimientoServicio(parroquia, servicio);
		} catch (Exception e) {
			System.out.print(e);
		}
		if (registroCorrecto) {
	%>
	
			<h4>Registro de requerimiento correcto</h4>
			<%
				} else {
			%>
			<h4>El sistema ha presentado un problema</h4>
			<%
				}
			%>
			<input class="btn btn-primary btn-block btn-lg" type="submit"
				value="Regresar a la pantalla principal"
				style="color: #fff; background-color: #0084da; border-color: #007ccd; border-radius: 20px;" />
		</form>
	</div>
</body>
</html>