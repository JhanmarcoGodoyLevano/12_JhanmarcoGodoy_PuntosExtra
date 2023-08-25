package pe.edu.vallegrande.app.pruebasAttendance;

import java.util.ArrayList;
import java.util.List;

import pe.edu.vallegrande.app.modelo.Attendance;
import pe.edu.vallegrande.app.service.AttendanceDao;

public class Asistencia {

	public static void main(String[] args) {
	    AttendanceDao attendanceDao = new AttendanceDao();

	    // Crear una lista de objetos Attendance
	    List<Attendance> listaAttendances = new ArrayList<>();

	    // Agregar un objeto Attendance a la lista con los datos deseados
	    Attendance attendance1 = new Attendance();
	    attendance1.setStudentId("2"); // Reemplazar ID del estudiante correspondiente
	    attendance1.setAttendanceStatus("A"); // Reemplaza "A" con el estado de asistencia deseado (A, T, J)
	    listaAttendances.add(attendance1);

	    // Agregar más objetos Attendance a la lista si es necesario
	    Attendance attendance2 = new Attendance();
	    attendance2.setStudentId("10"); // Reemplazar ID del estudiante correspondiente
	    attendance2.setAttendanceStatus("F"); // Reemplaza "A" con el estado de asistencia deseado (A, T, J)
	    listaAttendances.add(attendance2);

	    int result = attendanceDao.guardarAsistenciaGrupal(listaAttendances);

	    if (result > 0) {
	        System.out.println("Inserción exitosa: " + result + " registros insertados");
	    } else {
	        System.out.println("Error al insertar");
	    }
	}

}
