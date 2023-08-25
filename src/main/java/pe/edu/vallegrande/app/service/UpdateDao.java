package pe.edu.vallegrande.app.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import pe.edu.vallegrande.app.db.Conexion;
import pe.edu.vallegrande.app.modelo.Update;
import pe.edu.vallegrande.app.modelo.student;

public class UpdateDao {

	PreparedStatement ps;
	ResultSet rs;
	Conexion c = new Conexion();
	Connection con;

	// Este codigo es para hacer la prueba en consola
	// Este código es para hacer la prueba en consola
	// Este codigo es para hacer la prueba en consola
		public int guardarActualizacionGrupal(List<Update> listaUpdate) {
			int r = 0;
			String sql = "INSERT INTO update_students (id_estudent, state, description) VALUES (?, ?, ?)";
		    try {
		        con = c.conectar();
		        con.setAutoCommit(false); // Desactivar la confirmación automática

		        ps = con.prepareStatement(sql);

		        for (Update a : listaUpdate) {
		            ps.setString(1, a.getStudentId());
		            ps.setString(2, a.getState());
		            ps.setString(3, a.getDescription());
		            ps.addBatch(); // Agregar el registro a la ejecución en lote
		        }

		        int[] results = ps.executeBatch(); // Ejecutar la inserción en lote

		        for (int result : results) {
		            if (result == 1) {
		                r++; // Incrementar el contador de registros insertados exitosamente
		            }
		        }

		        con.commit(); // Confirmar la transacción

		        if (r == listaUpdate.size()) {
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


	
	
		public List<Update> obtenerReporteIndividual(String studentId) {
		    List<Update> reporte = new ArrayList<>();
		    String sql = "SELECT update_datetime, state, description FROM update_students WHERE id_estudent = ?";
		    
		    try {
		        con = c.conectar();
		        ps = con.prepareStatement(sql);
		        ps.setString(1, studentId);
		        rs = ps.executeQuery();
		        
		        while (rs.next()) {
		            Update update = new Update();
		            update.setUpdateDateTime(rs.getDate("update_datetime"));
		            update.setState(rs.getString("state"));
		            update.setDescription(rs.getString("description"));
		            reporte.add(update);
		        }
		    } catch (SQLException e) {
		        System.out.println("Error al obtener el reporte individual: " + e.getMessage());
		    }
		    
		    return reporte;
		}

	
		
		public List<student> listarPorTurnoSeccionGrado(String turn, String section, String grade) {
		    List<student> students = new ArrayList<>();
		    String sql = "SELECT id, document_number, names, last_names FROM student WHERE turn = ? AND section = ? AND grade = ? AND status = 'A'";
		    try {
		        con = c.conectar();
		        ps = con.prepareStatement(sql);
		        ps.setString(1, turn);
		        ps.setString(2, section);
		        ps.setString(3, grade);
		        rs = ps.executeQuery();
		        while (rs.next()) {
		            student st = new student();
		            st.setId(rs.getString(1));
		            st.setDocument_number(rs.getString(2));
		            st.setNames(rs.getString(3));
		            st.setLast_names(rs.getString(4));
		            students.add(st);
		        }
		    } catch (Exception e) {
		        e.printStackTrace();
		    }
		    return students;
		}


		}

