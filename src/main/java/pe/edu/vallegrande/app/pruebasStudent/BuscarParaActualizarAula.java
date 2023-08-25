package pe.edu.vallegrande.app.pruebasStudent;

import java.util.List;

import pe.edu.vallegrande.app.modelo.student;
import pe.edu.vallegrande.app.service.studentDao;

public class BuscarParaActualizarAula {

	public static void main(String[] args) {
        String grado = "5"; // Modifica el valor del grado según tus necesidades
        String seccion = "A"; // Modifica el valor de la sección según tus necesidades
        String turno = "DIA"; // Modifica el valor del turno según tus necesidades

        // Crear una instancia del DAO de estudiantes
        studentDao studentDAO = new studentDao();

        // Obtener la lista de estudiantes según el grado, sección y turno especificados
        List<student> students = studentDAO.BuscarParaActualizarAula(turno, seccion, grado);

        // Mostrar los estudiantes obtenidos
        for (student student : students) {
            System.out.println("-----------------------");
        	System.out.println("|ID:       |" + student.getId());
        	System.out.println("|DNI:      |" + student.getDocument_number());
            System.out.println("|Nombres:  |" + student.getNames());
            System.out.println("|Apellidos:|" + student.getLast_names());
            System.out.println("|Grado:    |" + student.getGrade());
            System.out.println("|Seccion:  |" + student.getSection());
            System.out.println("|Turno:    |" + student.getTurn());
            System.out.println("-----------------------");

        }
    }

}
