package pe.edu.vallegrande.app.pruebasPerson;

import pe.edu.vallegrande.app.modelo.person;
import pe.edu.vallegrande.app.service.personDao;

public class Create {	
	public static void main(String[] args) {
        personDao dao = new personDao();
        
        // Crear una instancia de person con los datos de la persona a agregar
        person p = new person();
        p.setDocument_type("DNI");
        p.setDocument_number("12345678");
        p.setRole("D");
        p.setTurn("T");
        p.setGender("F");
        p.setNames("Juana Teresa");
        p.setLast_names("Castillo Sanabria");
        p.setBirthdate("1990-01-01");
        p.setEmail("ana@gmail.com");
        p.setPhone("123456789");
        p.setCode_ubigeo("010101");
        
        // Agregar la persona
        int resultado = dao.agregar(p);
        
        if (resultado == 1) {
            System.out.println("Persona agregada exitosamente");
        } else {
            System.out.println("Error al agregar persona");
        }

	}

}
