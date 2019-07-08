package com.bolsaDeEmpleo.estructuras.artesano;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.bolsaDeEmpleo.bdd.Bdd;

public class ArtesanoBdd {

	public ArrayList<Artesano> consultarArtesanos() throws SQLException {
		ArrayList<Artesano> artesanos = new ArrayList<Artesano>();
		ResultSet resultadoConsulta = Bdd.ejecutarConsulta("SELECT * FROM perpersona");
		while (resultadoConsulta.next()) {
			Artesano artesano = new Artesano();
			try {
				artesano.setCodigoPersona(resultadoConsulta.getInt("CODIGOPERSONA"));
			} catch (Exception e) {
				artesano.setCodigoPersona(0);
			}
			try {
				artesano.setNombres(resultadoConsulta.getString("NOMBRES"));
			} catch (Exception e) {
				artesano.setNombres("Vacio");
			}
			try {
				artesano.setApellidos(resultadoConsulta.getString("APELLIDOS"));
			} catch (Exception e) {
				artesano.setApellidos("Vacio");
			}
			artesanos.add(artesano);
		}
		return artesanos;
	}

}
