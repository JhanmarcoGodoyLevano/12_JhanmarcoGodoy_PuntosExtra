package pe.edu.vallegrande.app.pruebasStudent;

import pe.edu.vallegrande.app.modelo.student;
import pe.edu.vallegrande.app.service.studentDao;

public class ReadDNIoCNE {

	public static void main(String[] args) {
		try {
			studentDao studentService = new studentDao();
			student s = studentService.listarDNIoCNE("54689756952221598753");
			// System.out.println(s); //Con este Código podemos imprimir todo en una fila.
			System.out.println("ID: " + s.getId());
			System.out.println("Tipo de documento: " + s.getDocument_type());
			System.out.println("Número de documento: " + s.getDocument_number());
			System.out.println("Rol: " + s.getRole());
			System.out.println("Estado: " + s.getStatus());
			System.out.println("Turno: " + s.getTurn());
			System.out.println("Seccion: " + s.getSection());
			System.out.println("Grado: " + s.getGrade());
			System.out.println("Nombres: " + s.getNames());
			System.out.println("Apellidos: " + s.getLast_names());
			System.out.println("Fecha de nacimiento: " + s.getBirthdate());
			System.out.println("Email: " + s.getEmail());
			System.out.println("Teléfono del apoderado: " + s.getPhone_proxy());
			System.out.println("Código ubigeo: " + s.getCode_ubigeo());
			System.out.println("--------------------------------");
		} catch (Exception e) {
			System.err.println(e.getMessage());
		}
	}

}
