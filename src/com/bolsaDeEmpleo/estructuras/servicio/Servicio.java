package com.bolsaDeEmpleo.estructuras.servicio;

import java.sql.SQLException;
import java.util.ArrayList;

public class Servicio {

	int idServicio;
	int idCatalogo;
	String nombreServicio;
	
	public Servicio() {
		super();
	}

	public Servicio(int idServicio, int idCatalogo, String nombreServicio) {
		super();
		this.idServicio = idServicio;
		this.idCatalogo = idCatalogo;
		this.nombreServicio = nombreServicio;
	}

	public int getIdServicio() {
		return idServicio;
	}

	public void setIdServicio(int idServicio) {
		this.idServicio = idServicio;
	}

	public int getIdCatalogo() {
		return idCatalogo;
	}

	public void setIdCatalogo(int idCatalogo) {
		this.idCatalogo = idCatalogo;
	}

	public String getNombreServicio() {
		return nombreServicio;
	}

	public void setNombreServicio(String nombreServicio) {
		this.nombreServicio = nombreServicio;
	}
	
	public ArrayList<Servicio> listarServicios() throws SQLException {
		ServicioBdd datos = new ServicioBdd();
		return datos.consultarServicios();
	}
}
