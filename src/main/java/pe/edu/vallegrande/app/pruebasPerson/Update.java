package pe.edu.vallegrande.app.pruebasPerson;

import pe.edu.vallegrande.app.modelo.person;
import pe.edu.vallegrande.app.service.personDao;

public class Update {

	public static void main(String[] args) {
		personDao dao = new personDao(); // Crear una instancia de la clase personDao

		// Crear una instancia de la clase person con los datos a actualizar
		person p = new person();
		p.setDocument_type("CNE");
		p.setDocument_number("154574125454554");
		p.setRole("A");
		p.setStatus("I");
		p.setTurn("T");
		p.setGender("F");
		p.setNames("Carlos Roberto");
		p.setLast_names("Sanches Porras");
		p.setBirthdate("1212-12-12");
		p.setEmail("gago@gmail.com");
		p.setPhone("555555555");
		p.setCode_ubigeo("010101");
		p.setId("52"); // ID de la persona a actualizar

		try {
			dao.actualizar(p);
			System.out.println("El registro se actualizó exitosamente.");
		} catch (Exception e) {
			System.out.println("Error al actualizar el registro: " + e.getMessage());
		}
	}

}
//        p.setDocument_type("CNE");
//        p.setDocument_number("33333333");
//        p.setRole("A");
//        p.setStatus("I");
//        p.setTurn("T");
//        p.setGender("F");
//        p.setNames("Carlos Roberto");
//        p.setLast_names("Sanches Porras");
//        p.setBirthdate("1212-12-12");
//        p.setEmail("gago@gmail.com");
//        p.setPhone("555555555");
//        p.setCode_ubigeo("010101");
//        p.setId("1"); // ID de la person a actualizar
