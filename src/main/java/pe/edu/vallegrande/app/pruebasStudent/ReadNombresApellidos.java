package pe.edu.vallegrande.app.pruebasStudent;

import java.util.List;

import pe.edu.vallegrande.app.modelo.student;
import pe.edu.vallegrande.app.service.studentDao;

public class ReadNombresApellidos {

	public static void main(String[] args) {
		studentDao studentDao = new studentDao(); // Instancia del DAO

		// Realizar la búsqueda por names y last_names
		String names = "a";
		String lastNames = "";
		List<student> resultList = studentDao.listarNOMyAPE(names, lastNames);

		// Imprimir los resultados en consola
		for (student s : resultList) {
			System.out.println("ID: " + s.getId());
			System.out.println("Document Type: " + s.getDocument_type());
			System.out.println("Document Number: " + s.getDocument_number());
			System.out.println("Role: " + s.getRole());
			System.out.println("Status: " + s.getStatus());
			System.out.println("Turn: " + s.getTurn());
			System.out.println("Names: " + s.getNames());
			System.out.println("Last Names: " + s.getLast_names());
			System.out.println("Birthdate: " + s.getBirthdate());
			System.out.println("Seccion: " + s.getSection());
			System.out.println("Grado: " + s.getGrade());
			System.out.println("Email: " + s.getEmail());
			System.out.println("Phone: " + s.getPhone_proxy());
			System.out.println("Code Ubigeo: " + s.getCode_ubigeo());
			System.out.println("-----------------------");
		}
	}

}
