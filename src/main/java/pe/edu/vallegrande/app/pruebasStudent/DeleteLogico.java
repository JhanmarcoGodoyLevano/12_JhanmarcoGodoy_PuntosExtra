package pe.edu.vallegrande.app.pruebasStudent;

import pe.edu.vallegrande.app.service.studentDao;

public class DeleteLogico {

	public static void main(String[] args) {
		studentDao studentDao = new studentDao(); // Instancia de la clase PersonDao

		// Supongamos que quieres eliminar lógicamente el registro con ID 1
		String id = "3";

		// Llamada al método deleteLogico
		studentDao.deleteLogico(id);

		// Verificación de la eliminación lógica
		System.out.println("Registro eliminado lógicamente con ID: " + id);
	}

}
