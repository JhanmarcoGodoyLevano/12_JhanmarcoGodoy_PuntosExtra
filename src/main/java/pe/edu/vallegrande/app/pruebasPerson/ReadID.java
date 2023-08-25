package pe.edu.vallegrande.app.pruebasPerson;

import pe.edu.vallegrande.app.modelo.person;
import pe.edu.vallegrande.app.service.personDao;

public class ReadID {

	public static void main(String[] args) {
		try {
			personDao personService = new personDao();
			person p = personService.listarID("1");
			// System.out.println(p); //Con este Código podemos imprimir todo en una fila.
			System.out.println("ID: " + p.getId());
			System.out.println("Tipo de documento: " + p.getDocument_type());
			System.out.println("Número de documento: " + p.getDocument_number());
			System.out.println("Rol: " + p.getRole());
			System.out.println("Estado: " + p.getStatus());
			System.out.println("Turno: " + p.getTurn());
			System.out.println("Género: " + p.getGender());
			System.out.println("Nombres: " + p.getNames());
			System.out.println("Apellidos: " + p.getLast_names());
			System.out.println("Fecha de nacimiento: " + p.getBirthdate());
			System.out.println("Email: " + p.getEmail());
			System.out.println("Teléfono: " + p.getPhone());
			System.out.println("Código ubigeo: " + p.getCode_ubigeo());
			System.out.println("--------------------------------");
		} catch (Exception e) {
			System.err.println(e.getMessage());
		}
	}

}
