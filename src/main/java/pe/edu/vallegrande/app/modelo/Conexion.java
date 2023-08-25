package pe.edu.vallegrande.app.modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion {

    // Declaración de la variable de conexión
    Connection con;
    
    // URL de conexión a la base de datos
    String url = "jdbc:sqlserver://localhost:1433;databaseName=CASSIATEC;encrypt=true;TrustServerCertificate=True;";
    
    // Nombre de usuario y contraseña para acceder a la base de datos
    String user = "sa";
    String pass = "1234";

    // Método para establecer una conexión a la base de datos
    public Connection conectar() {
        try {
            // Cargar el controlador del driver de la base de datos
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            
            // Establecer la conexión utilizando la URL, usuario y contraseña
            con = DriverManager.getConnection(url, user, pass);
        } catch (Exception e) {
            // Capturar cualquier excepción ocurrida durante la conexión
            e.printStackTrace();
        }
        return con;
    }
}