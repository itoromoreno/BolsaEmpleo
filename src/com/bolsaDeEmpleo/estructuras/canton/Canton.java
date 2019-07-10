package com.bolsaDeEmpleo.estructuras.canton;

import java.sql.SQLException;
import java.util.ArrayList;

public class Canton {

	int idCanton;
	String nombreCanton;
	String codigoCanton;
	int idProvincia;
	public Canton() {
		super();
	}
	public Canton(int idCanton, String nombreCanton, String codigoCanton, int idProvincia) {
		super();
		this.idCanton = idCanton;
		this.nombreCanton = nombreCanton;
		this.codigoCanton = codigoCanton;
		this.idProvincia = idProvincia;
	}
	public int getIdCanton() {
		return idCanton;
	}
	public void setIdCanton(int idCanton) {
		this.idCanton = idCanton;
	}
	public String getNombreCanton() {
		return nombreCanton;
	}
	public void setNombreCanton(String nombreCanton) {
		this.nombreCanton = nombreCanton;
	}
	public String getCodigoCanton() {
		return codigoCanton;
	}
	public void setCodigoCanton(String codigoCanton) {
		this.codigoCanton = codigoCanton;
	}
	public int getIdProvincia() {
		return idProvincia;
	}
	public void setIdProvincia(int idProvincia) {
		this.idProvincia = idProvincia;
	}
	
	public ArrayList<Canton> listarCantones() throws SQLException {
		CantonBdd datos = new CantonBdd();
		return datos.consultarCantones();
	}
}
