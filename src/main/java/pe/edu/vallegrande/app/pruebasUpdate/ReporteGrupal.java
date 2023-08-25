package pe.edu.vallegrande.app.pruebasUpdate;

import java.util.List;


import pe.edu.vallegrande.app.modelo.Update;
import pe.edu.vallegrande.app.service.UpdateDao;

public class ReporteGrupal {

	public static void main(String[] args) {
	   UpdateDao updateDao = new UpdateDao();

	    // Reemplaza "2" con el ID del estudiante correspondiente
	    String studentId = "1";

	    List<Update> updateList = updateDao.obtenerReporteIndividual(studentId);

	    if (!updateList.isEmpty()) {
	        System.out.println("Reporte de asistencias del estudiante " + studentId + ":");
	        for (Update update : updateList) {
	            System.out.println("Fecha: " + update.getUpdateDateTime());
	            System.out.println("Estado: " + update.getState());
	            System.out.println("Descripcion: " + update.getDescription());
	            System.out.println("------------------------");
	            System.out.println("------------------------");
	        }
	    } else {
	        System.out.println("No se encontraron asistencias para el estudiante " + studentId);
	    }
	}

}





