package pe.edu.vallegrande.app.pruebasStudent;

import pe.edu.vallegrande.app.modelo.student;
import pe.edu.vallegrande.app.service.studentDao;

public class Update {

	public static void main(String[] args) {
		studentDao dao = new studentDao(); // Crear una instancia de la clase personDao

		// Crear una instancia de la clase person con los datos a actualizar
		student s = new student();
		s.setDocument_type("DNI");
		s.setDocument_number("00000000");
		s.setTurn("DIA");
		s.setNames("AAAAAAAAa");
		s.setLast_names("Sanches Porras");
		s.setBirthdate("1212-12-12");
		s.setSection("A");
		s.setGrade("5");
		s.setEmail("ess@gmail.com");
		s.setPhone_proxy("555555555");
		s.setCode_ubigeo("010101");
		s.setId("5"); // ID de la persona a actualizar

		try {
			dao.actualizar(s);
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
