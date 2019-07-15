package com.bolsaDeEmpleo.estructuras.canton;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.bolsaDeEmpleo.bdd.Bdd;

public class CantonBdd {

	public ArrayList<Canton> consultarCantones() throws SQLException {
		ArrayList<Canton> cantones = new ArrayList<Canton>();
		ResultSet resultadoConsulta = Bdd.ejecutarConsulta("SELECT * FROM adcanton where IDPROVINCIA = 17 order by nombrecanton");
		while (resultadoConsulta.next()) {
			Canton canton = new Canton();
			try {
				canton.setIdCanton(resultadoConsulta.getInt("IDCANTON"));
			} catch (Exception e) {
				canton.setIdCanton(0);
			}
			try {
				canton.setNombreCanton(resultadoConsulta.getString("NOMBRECANTON"));
			} catch (Exception e) {
				canton.setNombreCanton("Vacio");
			}
			try {
				canton.setCodigoCanton(resultadoConsulta.getString("CODIGOCANTON"));
			} catch (Exception e) {
				canton.setCodigoCanton("0");
			}
			try {
				canton.setIdProvincia(resultadoConsulta.getInt("IDPROVINCIA"));
			} catch (Exception e) {
				canton.setIdProvincia(0);
			}
			cantones.add(canton);
		}
		return cantones;
	}
}
