package pe.edu.vallegrande.app.modelo;

public class Ocurrencia {

	private int idOcurrencia;
    private String Descripcion;
    
    public Ocurrencia() {
		// TODO Auto-generated constructor stub
	}
    
    public Ocurrencia(int idOcurrencia, String Descripcion) {
        this.idOcurrencia = idOcurrencia;
        this.Descripcion = Descripcion;
    }
    
    @Override
    public String toString() {
        return  Descripcion ;
    }
    

    
	public int getIdOcurrencia() {
		return idOcurrencia;
	}

	public void setIdOcurrencia(int idOcurrencia) {
		this.idOcurrencia = idOcurrencia;
	}

	public String getDescripcion() {
		return Descripcion;
	}

	public void setDescripcion(String descripcion) {
		Descripcion = descripcion;
	}
    
    
	
}
