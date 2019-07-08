package com.bolsaDeEmpleo.estructuras.artesano;

import java.sql.SQLException;
import java.util.ArrayList;

public class Artesano {

	int codigoPersona;
	String cedula;
	String apellidos;
	String nombres;
	String direccion;
	int idParroquia;
	
	public Artesano() {
		super();
	}

	public Artesano(int codigoPersona, String cedula, String apellidos, String nombres, String direccion,
			int idParroquia) {
		super();
		this.codigoPersona = codigoPersona;
		this.cedula = cedula;
		this.apellidos = apellidos;
		this.nombres = nombres;
		this.direccion = direccion;
		this.idParroquia = idParroquia;
	}

	public int getCodigoPersona() {
		return codigoPersona;
	}

	public void setCodigoPersona(int codigoPersona) {
		this.codigoPersona = codigoPersona;
	}

	public String getCedula() {
		return cedula;
	}

	public void setCedula(String cedula) {
		this.cedula = cedula;
	}

	public String getApellidos() {
		return apellidos;
	}

	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}

	public String getNombres() {
		return nombres;
	}

	public void setNombres(String nombres) {
		this.nombres = nombres;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public int getIdParroquia() {
		return idParroquia;
	}

	public void setIdParroquia(int idParroquia) {
		this.idParroquia = idParroquia;
	}
	
	public ArrayList<Artesano> listarArtesanos() throws SQLException {
		ArtesanoBdd datos = new ArtesanoBdd();
		return datos.consultarArtesanos();
	}
}
