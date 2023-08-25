package pe.edu.vallegrande.app.pruebasStudent;

import pe.edu.vallegrande.app.modelo.student;
import pe.edu.vallegrande.app.service.studentDao;

public class Create {	
	public static void main(String[] args) {
        studentDao dao = new studentDao();
        
        // Crear una instancia de person con los datos de la persona a agregar
        student s = new student();
        s.setDocument_type("DNI");
        s.setDocument_number("22222458");
        s.setTurn("TARDE");
        s.setSection("A");
        s.setGrade("2");
        s.setNames("Juana Teresa");
        s.setLast_names("Castillo Sanabria");
        s.setBirthdate("1990-01-01");
        s.setEmail("ana@gmail.com");
        s.setPhone_proxy("123456789");
        s.setCode_ubigeo("010101");
        
        // Agregar la persona
        int resultado = dao.agregar(s);
        
        if (resultado == 1) {
            System.out.println("Persona agregada exitosamente");
        } else {
            System.out.println("Error al agregar persona");
        }

	}

}
