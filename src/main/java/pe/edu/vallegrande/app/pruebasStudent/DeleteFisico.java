package pe.edu.vallegrande.app.pruebasStudent;

import pe.edu.vallegrande.app.service.studentDao;

public class DeleteFisico {

	public static void main(String[] args) {
        String idToDelete = "43"; // ID del registro a eliminar
        
        studentDao studentDao = new studentDao();
        
        try {
        	studentDao.delete(idToDelete);
            System.out.println("Registro eliminado exitosamente.");
        } catch (Exception e) {
            System.out.println("Error al eliminar el registro: " + e.getMessage());
            e.printStackTrace();
        }
	}

}
