package pe.edu.vallegrande.app.pruebasStudent;

import java.util.List;

import pe.edu.vallegrande.app.modelo.student;
import pe.edu.vallegrande.app.service.studentDao;

public class ReadInactivos {

	public static void main(String[] args) {
        studentDao dao = new studentDao();
        List<student> listaStudent = dao.listarInactivos();
        
        // Mostrar la lista de personas
        for (student s : listaStudent) {
            System.out.println("ID: " + s.getId());
            System.out.println("Tipo de documento: " + s.getDocument_type());
            System.out.println("Número de documento: " + s.getDocument_number());
            System.out.println("Rol: " + s.getRole());
            System.out.println("Seccion: " + s.getSection());
            System.out.println("Grado: " + s.getGrade());
            System.out.println("Nombres: " + s.getNames());
            System.out.println("Apellidos: " + s.getLast_names());
            System.out.println("Fecha de nacimiento: " + s.getBirthdate());
            System.out.println("Estado: " + s.getStatus());
            System.out.println("Turno: " + s.getTurn());
            System.out.println("Email: " + s.getEmail());
            System.out.println("Teléfono del apoderado: " + s.getPhone_proxy());
            System.out.println("Código ubigeo: " + s.getCode_ubigeo());
            System.out.println("--------------------------------");
            System.out.println("--------------------------------");
        }
	}

}
