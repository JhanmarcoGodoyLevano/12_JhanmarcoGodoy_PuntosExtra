package pe.edu.vallegrande.app.pruebasUpdate;

import java.util.ArrayList;
import java.util.List;

import pe.edu.vallegrande.app.modelo.Update;
import pe.edu.vallegrande.app.service.UpdateDao;

public class PasarAño {

	public static void main(String[] args) {
	    UpdateDao updateDao = new UpdateDao();

	    // Crear una lista de objetos Attendance
	    List<Update> listaAttendances = new ArrayList<>();

	    // Agregar un objeto Attendance a la lista con los datos deseados
	    Update attendance1 = new Update();
	    attendance1.setStudentId("4"); // Reemplazar ID del estudiante correspondiente
	    attendance1.setState("D"); // Reemplaza "A" con el estado de asistencia deseado (A, T, J)
	    attendance1.setDescription("aea");// Reemplaza "A" con el estado de asistencia deseado (A, T, J)
	    listaAttendances.add(attendance1);

	    // Agregar más objetos Attendance a la lista si es necesario
	    Update attendance2 = new Update();
	    attendance2.setStudentId("5"); // Reemplazar ID del estudiante correspondiente
	    attendance2.setState("A");
	    attendance2.setDescription("F");// Reemplaza "A" con el estado de asistencia deseado (A, T, J)
	    listaAttendances.add(attendance2);

	    int result = updateDao.guardarActualizacionGrupal(listaAttendances);

	    if (result > 0) {
	        System.out.println("Inserción exitosa: " + result + " registros insertados");
	    } else {
	        System.out.println("Error al insertar");
	    }
	}

}
