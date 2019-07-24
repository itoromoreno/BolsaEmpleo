package com.bolsaDeEmpleo.estructuras.requerimientoServicio;

import java.sql.SQLException;
import java.util.Date;

public class RequerimientoServicio {

	Date fechaRegistro;
	int idParroquia;
	int idServicio;
	
	public RequerimientoServicio() {
		super();
	}

	public RequerimientoServicio(Date fechaRegistro, int idParroquia, int idServicio) {
		super();
		this.fechaRegistro = fechaRegistro;
		this.idParroquia = idParroquia;
		this.idServicio = idServicio;
	}

	public Date getFechaRegistro() {
		return fechaRegistro;
	}

	public void setFechaRegistro(Date fechaRegistro) {
		this.fechaRegistro = fechaRegistro;
	}

	public int getIdParroquia() {
		return idParroquia;
	}

	public void setIdParroquia(int idParroquia) {
		this.idParroquia = idParroquia;
	}

	public int getIdServicio() {
		return idServicio;
	}

	public void setIdServicio(int idServicio) {
		this.idServicio = idServicio;
	}
	
	public static int obtenerCantidadArtesanos(String idParroquia, String idServicio) throws SQLException {
		RequerimientoServicioBdd requerimientoServicio = new RequerimientoServicioBdd();
		return requerimientoServicio.obtenerCantidadDeArtesanos(idParroquia, idServicio);
	}
	
	public static boolean registrarRequerimientoServicio(String idParroquia, String idServicio, String comentario) throws SQLException {
		RequerimientoServicioBdd requerimientoServicio = new RequerimientoServicioBdd();
		return requerimientoServicio.registrarRequerimiento(idParroquia, idServicio, comentario);
	}
}
