package com.bolsaDeEmpleo.estructuras.requerimientoServicio;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

import com.bolsaDeEmpleo.bdd.Bdd;

public class RequerimientoServicioBdd {

	public int obtenerCantidadDeArtesanos(String idparroquia, String idServicio) throws SQLException {
		int cantidadArtesanos = 0;
		
		String query = "select count(*) from personaservicio where idServicio="
				+ idServicio + " and CODIGOPERSONA in (select CODIGOPERSONA from perpersona where IDPARROQUIA="
				+ idparroquia + ")";

		ResultSet resultadoConsulta = Bdd.ejecutarConsulta(query);

		while (resultadoConsulta.next())
			cantidadArtesanos = resultadoConsulta.getInt(1);

		return cantidadArtesanos;
	}
	
	public boolean registrarRequerimiento(String idParroquia, String idServicio, String comentario) throws SQLException {		
		int cantidadIngresos = 0;

		String query = "insert into berequerimiento values(0,NOW(),null,1,'"
				+ comentario + "',"
				+ idParroquia + ","
				+ idServicio + ")";
		
		cantidadIngresos = Bdd.ejecutarActualizacion(query);

		return cantidadIngresos > 0;
	}
}
