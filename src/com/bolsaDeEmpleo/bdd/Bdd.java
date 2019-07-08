package com.bolsaDeEmpleo.bdd;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Bdd {
	final static String DB_URL = "jdbc:mysql://localhost/bolsa_de_empleo?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
	final static String USER = "root";
	final static String PASS = "Mysql21121996*";

	public static Connection conectar() {
		Connection conexion = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conexion = DriverManager.getConnection(DB_URL, USER, PASS);
		} catch (Exception e) {
			System.out.print(e);
		}
		return conexion;
	}
	
	
	public static ResultSet ejecutarConsulta(String consulta) throws SQLException {
		ResultSet resultado = null;
		Connection conexion = conectar();
		Statement sentencia = conexion.createStatement();
		resultado = sentencia.executeQuery(consulta);
		return resultado;
	}
}
