package pe.edu.vallegrande.app.pruebasStudent;

import java.sql.Connection;

import pe.edu.vallegrande.app.db.Conexion;

public class ProbarConexion {

	public static void main(String[] args) {
		Conexion conexion = new Conexion(); // Crear una instancia de la clase Conexion
		Connection con = conexion.conectar(); // Establecer la conexión a la base de datos

		if (con != null) {
			System.out.println("Conexión exitosa a la base de datos CASSIATEC");
		} else {
			System.out.println("No se pudo establecer la conexión");
		}
	}

}
