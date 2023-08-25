package pe.edu.vallegrande.app.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import pe.edu.vallegrande.app.db.Conexion;
import pe.edu.vallegrande.app.modelo.Attendance;

public class AttendanceDao {

	PreparedStatement ps;
	ResultSet rs;
	Conexion c = new Conexion();
	Connection con;

	// Este codigo es para hacer la prueba en consola
	public int guardarAsistenciaGrupal(List<Attendance> listaAttendances) {
		int r = 0;
		String sql = "INSERT INTO registro_asistencia (id_estudent, attendance_status, attendance_ocurrencia) VALUES (?, ?, ?)";
	    try {
	        con = c.conectar();
	        con.setAutoCommit(false); // Desactivar la confirmación automática

	        ps = con.prepareStatement(sql);

	        for (Attendance a : listaAttendances) {
	            ps.setString(1, a.getStudentId());
	            ps.setString(2, a.getAttendanceStatus());
	            ps.setString(3, a.getAttendance_ocurrencia());
	            ps.addBatch(); // Agregar el registro a la ejecución en lote
	        }

	        int[] results = ps.executeBatch(); // Ejecutar la inserción en lote

	        for (int result : results) {
	            if (result == 1) {
	                r++; // Incrementar el contador de registros insertados exitosamente
	            }
	        }

	        con.commit(); // Confirmar la transacción

	        if (r == listaAttendances.size()) {
	            r = 1;
	        } else {
	            r = 0;
	        }
	    } catch (SQLException e) {
	        try {
	            con.rollback(); // Deshacer la transacción en caso de error
	        } catch (SQLException ex) {
	            System.out.println("Error al deshacer la transacción: " + ex.getMessage());
	        }
	        System.out.println("Error al insertar: " + e.getMessage());
	    } finally {
	        try {
	            con.setAutoCommit(true); // Reactivar la confirmación automática
	            if (ps != null) {
	                ps.close();
	            }
	            if (con != null) {
	                con.close();
	            }
	        } catch (SQLException e) {
	            System.out.println("Error al cerrar la conexión: " + e.getMessage());
	        }
	    }
	    return r;
	}
	
	
	public List<Attendance> obtenerReporteIndividual(String studentId) {
	    List<Attendance> reporte = new ArrayList<>();
	    String sql = "SELECT attendance_datetime, attendance_status, attendance_ocurrencia FROM registro_asistencia WHERE id_estudent = ?";
	    
	    try {
	        con = c.conectar();
	        ps = con.prepareStatement(sql);
	        ps.setString(1, studentId);
	        rs = ps.executeQuery();
	        
	        while (rs.next()) {
	            Attendance attendance = new Attendance();
	            attendance.setAttendanceDateTime(rs.getDate("attendance_datetime"));
	            attendance.setAttendanceStatus(rs.getString("attendance_status"));
	            attendance.setAttendance_ocurrencia(rs.getString("attendance_ocurrencia"));
	            reporte.add(attendance);
	        }
	    } catch (SQLException e) {
	        System.out.println("Error al obtener el reporte individual: " + e.getMessage());
	    }
	    
	    return reporte;
	}

}
