package pe.edu.vallegrande.app.pruebasPerson;

import pe.edu.vallegrande.app.service.personDao;

public class ActivacionLogico {

	public static void main(String[] args) {
		personDao personDao = new personDao(); // Instancia de la clase PersonDao

		// Supongamos que quieres eliminar lógicamente el registro con ID 1
		String id = "33";

		// Llamada al método deleteLogico
		personDao.activacionLogico(id);

		// Verificación de la eliminación lógica
		System.out.println("Registro activo lógicamente con ID: " + id);
	}

}
