package pe.edu.vallegrande.app.pruebasStudent;

import pe.edu.vallegrande.app.modelo.student;
import pe.edu.vallegrande.app.service.studentDao;
import java.util.ArrayList;
import java.util.List;

public class ActualizarAula {

    public static void main(String[] args) {
        studentDao dao = new studentDao(); // Crear una instancia de la clase studentDao

        List<student> studentsToUpdate = new ArrayList<>();

        // Crear una instancia de la clase student con los datos a actualizar
        student s1 = new student();
        s1.setId("1"); // Reemplaza "ID_DEL_ESTUDIANTE_1" con el ID del primer estudiante a actualizar
        s1.setTurn("DIA");
        s1.setSection("A");
        s1.setGrade("1");
        studentsToUpdate.add(s1);

        student s2 = new student();
        s2.setId("2"); // Reemplaza "ID_DEL_ESTUDIANTE_2" con el ID del segundo estudiante a actualizar
        s2.setTurn("DIA");
        s2.setSection("A");
        s2.setGrade("1");
        studentsToUpdate.add(s2);

        try {
            int totalActualizaciones = dao.actualizarAulas(studentsToUpdate);
            System.out.println("Se actualizaron " + totalActualizaciones + " registros exitosamente.");
        } catch (Exception e) {
            System.out.println("Error al actualizar los registros: " + e.getMessage());
        }
    }

}
