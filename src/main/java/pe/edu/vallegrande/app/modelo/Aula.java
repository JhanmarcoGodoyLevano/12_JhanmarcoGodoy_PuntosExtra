package pe.edu.vallegrande.app.modelo;

public class Aula {

	private int idAula;
    private String Descripcion;
    
    public Aula() {
		// TODO Auto-generated constructor stub
	}
    
    public Aula(int idAula, String Descripcion) {
        this.idAula = idAula;
        this.Descripcion = Descripcion;
    }
    
    @Override
    public String toString() {
        return  Descripcion ;
    }

	public int getIdAula() {
		return idAula;
	}

	public void setIdAula(int idAula) {
		this.idAula = idAula;
	}

	public String getDescripcion() {
		return Descripcion;
	}

	public void setDescripcion(String descripcion) {
		Descripcion = descripcion;
	}
	
}
