package pe.edu.vallegrande.app.pruebasAttendance;

import java.util.List;

import pe.edu.vallegrande.app.modelo.Attendance;
import pe.edu.vallegrande.app.service.AttendanceDao;

public class ReporteIndividual {

	public static void main(String[] args) {
	    AttendanceDao attendanceDao = new AttendanceDao();

	    // Reemplaza "2" con el ID del estudiante correspondiente
	    String studentId = "1";

	    List<Attendance> attendanceList = attendanceDao.obtenerReporteIndividual(studentId);

	    if (!attendanceList.isEmpty()) {
	        System.out.println("Reporte de asistencias del estudiante " + studentId + ":");
	        for (Attendance attendance : attendanceList) {
	            System.out.println("Fecha: " + attendance.getAttendanceDateTime());
	            System.out.println("Estado: " + attendance.getAttendanceStatus());
	            System.out.println("Ocurrencia: " + attendance.getAttendance_ocurrencia());
	            System.out.println("------------------------");
	            System.out.println("------------------------");
	        }
	    } else {
	        System.out.println("No se encontraron asistencias para el estudiante " + studentId);
	    }
	}

}
