package com.bolsaDeEmpleo.estructuras.servicio;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.bolsaDeEmpleo.bdd.Bdd;

public class ServicioBdd {

	public ArrayList<Servicio> consultarServicios() throws SQLException {
		ArrayList<Servicio> servicios = new ArrayList<Servicio>();
		ResultSet resultadoConsulta = Bdd.ejecutarConsulta("Select * from servicio");
		while(resultadoConsulta.next()) {
			Servicio servicio = new Servicio();
			try {
				servicio.setIdServicio(resultadoConsulta.getInt("idServicio"));
			} catch (Exception e) {
				servicio.setIdServicio(0);
			}
			
			try {
				servicio.setIdCatalogo(resultadoConsulta.getInt("idCatalogo"));
			} catch (Exception e) {
				servicio.setIdCatalogo(0);
			}
			
			try {
				servicio.setNombreServicio(resultadoConsulta.getString("nombreServicio"));
			} catch (Exception e) {
				servicio.setNombreServicio("Vacío");
			}
			
			servicios.add(servicio);
		}
		
		return servicios;
	}
	
}
