package pe.edu.vallegrande.app.pruebasPerson;

import pe.edu.vallegrande.app.service.personDao;

public class DeleteFisico {

	public static void main(String[] args) {
        String idToDelete = "38"; // ID del registro a eliminar
        
        personDao personDAO = new personDao();
        
        try {
            personDAO.delete(idToDelete);
            System.out.println("Registro eliminado exitosamente.");
        } catch (Exception e) {
            System.out.println("Error al eliminar el registro: " + e.getMessage());
            e.printStackTrace();
        }
	}

}
