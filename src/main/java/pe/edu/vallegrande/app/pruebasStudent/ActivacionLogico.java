package pe.edu.vallegrande.app.pruebasStudent;

import pe.edu.vallegrande.app.service.studentDao;

public class ActivacionLogico {

	public static void main(String[] args) {
		studentDao studentDao = new studentDao(); // Instancia de la clase PersonDao

		// Supongamos que quieres eliminar lógicamente el registro con ID 1
		String id = "33";

		// Llamada al método deleteLogico
		studentDao.activacionLogico(id);

		// Verificación de la eliminación lógica
		System.out.println("Registro activo lógicamente con ID: " + id);
	}

}
