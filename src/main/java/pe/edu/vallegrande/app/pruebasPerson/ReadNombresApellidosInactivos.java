package pe.edu.vallegrande.app.pruebasPerson;

import java.util.List;

import pe.edu.vallegrande.app.modelo.person;
import pe.edu.vallegrande.app.service.personDao;

public class ReadNombresApellidosInactivos {

	public static void main(String[] args) {
		personDao personDao = new personDao(); // Instancia del DAO

		// Realizar la búsqueda por names y last_names
		String names = "jesus";
		String lastNames = "a";
		List<person> resultList = personDao.listarNOMyAPEinactivos(names, lastNames);

		// Imprimir los resultados en consola
		for (person p : resultList) {
			System.out.println("ID: " + p.getId());
			System.out.println("Document Type: " + p.getDocument_type());
			System.out.println("Document Number: " + p.getDocument_number());
			System.out.println("Role: " + p.getRole());
			System.out.println("Status: " + p.getStatus());
			System.out.println("Turn: " + p.getTurn());
			System.out.println("Gender: " + p.getGender());
			System.out.println("Names: " + p.getNames());
			System.out.println("Last Names: " + p.getLast_names());
			System.out.println("Birthdate: " + p.getBirthdate());
			System.out.println("Email: " + p.getEmail());
			System.out.println("Phone: " + p.getPhone());
			System.out.println("Code Ubigeo: " + p.getCode_ubigeo());
			System.out.println("-----------------------");
		}
	}

}
