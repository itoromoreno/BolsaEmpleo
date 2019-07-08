package com.bolsaDeEmpleo.estructuras.parroquia;

import java.sql.SQLException;
import java.util.ArrayList;

public class Parroquia {

	int idParroquia;
	String nombreParroquia;
	String codigoParroquia;
	int idCanton;
	
	public Parroquia() {
		super();
	}

	public Parroquia(int idParroquia, String nombreParroquia, String codigoParroquia, int idCanton) {
		super();
		this.idParroquia = idParroquia;
		this.nombreParroquia = nombreParroquia;
		this.codigoParroquia = codigoParroquia;
		this.idCanton = idCanton;
	}

	public int getIdParroquia() {
		return idParroquia;
	}

	public void setIdParroquia(int idParroquia) {
		this.idParroquia = idParroquia;
	}

	public String getNombreParroquia() {
		return nombreParroquia;
	}

	public void setNombreParroquia(String nombreParroquia) {
		this.nombreParroquia = nombreParroquia;
	}

	public String getCodigoParroquia() {
		return codigoParroquia;
	}

	public void setCodigoParroquia(String codigoParroquia) {
		this.codigoParroquia = codigoParroquia;
	}

	public int getIdCanton() {
		return idCanton;
	}

	public void setIdCanton(int idCanton) {
		this.idCanton = idCanton;
	}
	
	public ArrayList<Parroquia> listarParroquias() throws SQLException {
		ParroquiaBdd datos = new ParroquiaBdd();
		return datos.consultarParroquias();
	}
}
