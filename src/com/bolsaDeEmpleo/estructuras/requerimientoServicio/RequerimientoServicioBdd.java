package com.bolsaDeEmpleo.estructuras.requerimientoServicio;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

import com.bolsaDeEmpleo.bdd.Bdd;

public class RequerimientoServicioBdd {

	public int obtenerCantidadDeArtesanos(String idparroquia, String idServicio) throws SQLException {
		int cantidadArtesanos = 0;

		ResultSet resultadoConsulta = Bdd.ejecutarConsulta("select count(*) from personaservicio where idServicio="
				+ idServicio + " and CODIGOPERSONA in (select CODIGOPERSONA from perpersona where IDPARROQUIA="
				+ idparroquia + ")");

		while (resultadoConsulta.next())
			cantidadArtesanos = resultadoConsulta.getInt(1);

		return cantidadArtesanos;
	}
	
	public boolean registrarRequerimiento(String idParroquia, String idServicio) throws SQLException {		
		int cantidadIngresos = 0;

		cantidadIngresos = Bdd.ejecutarActualizacion("insert into requerimientoservicio values(0,NOW(),"
				+ idParroquia + ","
				+ idServicio +")");

		return cantidadIngresos > 0;
	}
}
