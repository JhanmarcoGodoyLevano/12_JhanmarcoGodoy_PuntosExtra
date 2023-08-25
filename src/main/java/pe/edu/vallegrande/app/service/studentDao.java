package pe.edu.vallegrande.app.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import pe.edu.vallegrande.app.db.Conexion;
import pe.edu.vallegrande.app.modelo.student;

public class studentDao {
	PreparedStatement ps;
	ResultSet rs;
	Conexion c = new Conexion();
	Connection con;

	
	//String sql = "SELECT s.id, s.document_number, s.names, s.last_names FROM student s WHERE s.turn = ? AND s.section = ? AND s.grade = ? AND s.status = 'A'";
	//listar GRADO SECCION TURNO Y ACTIVO
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
	
	public List<student> BuscarParaActualizarAula(String turn, String section, String grade) {
	    List<student> students = new ArrayList<>();
	    String sql = "SELECT id, document_number, names, last_names, grade, section, turn FROM student WHERE turn = ? AND section = ? AND grade = ? AND status = 'A'";
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
	            st.setGrade(rs.getString(5));
	            st.setSection(rs.getString(6));
	            st.setTurn(rs.getString(7));
	            students.add(st);
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return students;
	}

	public List<student> listarPorNombresApellidosGrado(String grade) {
	    List<student> students = new ArrayList<>();
	    String sql = "SELECT id, document_number, names, last_names, grade FROM student WHERE grade = ? AND status = 'A'";
	    try {
	        con = c.conectar();
	        ps = con.prepareStatement(sql);
	        ps.setString(1, grade);
	        rs = ps.executeQuery();
	        while (rs.next()) {
	            student st = new student();
	            st.setId(rs.getString(1));
	            st.setNames(rs.getString(2));
	            st.setLast_names(rs.getString(3));
	            st.setGrade(rs.getString(4)); // Asegurarse de tener el método setGrade en la clase student
	            students.add(st);
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return students;
	}
	
	// Listar student activos
	public List<student> listar() {
	    List<student> lista = new ArrayList<>();
	    String sql = "SELECT * FROM student WHERE status = 'A'";
	    try {
	        con = c.conectar();
	        ps = con.prepareStatement(sql);
	        rs = ps.executeQuery();
	        while (rs.next()) {
	        	student s = new student();
	            s.setId(rs.getString(1));
	            s.setDocument_type(rs.getString(2));
	            s.setDocument_number(rs.getString(3));
	            s.setRole(rs.getString(4));
	            s.setStatus(rs.getString(5));
	            s.setTurn(rs.getString(6));
	            s.setNames(rs.getString(7));
	            s.setLast_names(rs.getString(8));
	            s.setBirthdate(rs.getString(9));
	            s.setSection(rs.getString(10));
	            s.setGrade(rs.getString(11));
	            s.setEmail(rs.getString(12));
	            s.setPhone_proxy(rs.getString(13));
	            s.setCode_ubigeo(rs.getString(14));
	            lista.add(s);
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return lista;
	}
	
	
	//Listar student inactivas
	public List<student> listarInactivos() {
	    List<student> lista = new ArrayList<>();
	    String sql = "SELECT * FROM student WHERE status = 'I'";
	    try {
	        con = c.conectar();
	        ps = con.prepareStatement(sql);
	        rs = ps.executeQuery();
	        while (rs.next()) {
	        	student s = new student();
	            s.setId(rs.getString(1));
	            s.setDocument_type(rs.getString(2));
	            s.setDocument_number(rs.getString(3));
	            s.setRole(rs.getString(4));
	            s.setStatus(rs.getString(5));
	            s.setTurn(rs.getString(6));
	            s.setNames(rs.getString(7));
	            s.setLast_names(rs.getString(8));
	            s.setBirthdate(rs.getString(9));
	            s.setSection(rs.getString(10));
	            s.setGrade(rs.getString(11));
	            s.setEmail(rs.getString(12));
	            s.setPhone_proxy(rs.getString(13));
	            s.setCode_ubigeo(rs.getString(14));
	            lista.add(s);
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return lista;
	}
	

	// Este codigo es para hacer la prueba en consola
	public int agregar(student s) {
		int r = 0;
		String sql = "insert into student( document_type, document_number, turn, names, last_names, birthdate, section, grade, email, phone_proxy, code_ubigeo)values(?,?,?,?,?,?,?,?,?,?,?)";
		try {
			con = c.conectar();
			ps = con.prepareStatement(sql);
			// ps.setInt(1, j.getId());
			ps.setString(1, s.getDocument_type());
			ps.setString(2, s.getDocument_number());
//			ps.setString(3, s.getRole());
			// ps.setString(4, p.getStatus());
			ps.setString(3, s.getTurn());
			ps.setString(4, s.getNames());
			ps.setString(5, s.getLast_names());
			ps.setString(6, s.getBirthdate());
			ps.setString(7, s.getSection());
			ps.setString(8, s.getGrade());
			ps.setString(9, s.getEmail());
			ps.setString(10, s.getPhone_proxy());
			ps.setString(11, s.getCode_ubigeo());
			r = ps.executeUpdate();
			if (r == 1) {
				r = 1;
			} else {
				r = 0;
			}
		} catch (SQLException e) {
			System.out.println("Error al insertar: " + e.getMessage());
		}
		return r;
	}

//	public int agregar(jefe j) {
//		int r = 0;
//		String sql = "insert into boss(id, name, last_name, phone, ubigeo_code)values(?,?,?,?,?)";
//		try {
//			con = c.conectar();
//			ps = con.prepareStatement(sql);
//			ps.setString(1, j.getId());
//			ps.setString(2, j.getName());
//			ps.setString(3, j.getLast_name());
//			ps.setString(4, j.getPhone());
//			ps.setString(5, j.getUbigeo_code());
//			r = ps.executeUpdate();
//			if(r == 1) {
//				r = 1;
//			}else {
//				r = 0;
//			}
//		} catch (SQLException e) {
//	        System.out.println("Error al insertar: " + e.getMessage());
//		}
//	    return r;
//	}

	public student listarID(String id) {
		String sql = "select * from student where id=" + id;
		student s = new student();
		try {
			con = c.conectar();
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				s.setId(rs.getString(1));
				s.setDocument_type(rs.getString(2));
				s.setDocument_number(rs.getString(3));
				s.setRole(rs.getString(4));
				s.setStatus(rs.getString(5));
				s.setTurn(rs.getString(6));
				s.setNames(rs.getString(7));
				s.setLast_names(rs.getString(8));
				s.setBirthdate(rs.getString(9));
				s.setSection(rs.getString(10));
				s.setGrade(rs.getString(11));
				s.setEmail(rs.getString(12));
				s.setPhone_proxy(rs.getString(13));
				s.setCode_ubigeo(rs.getString(14));
			}
		} catch (Exception e) {
		}
		return s;
	}

	public student listarDNIoCNE(String document_number) {
		String sql = "select * from student where document_number=" + document_number;
		student st = new student();
		try {
			con = c.conectar();
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				st.setId(rs.getString(1));
				st.setDocument_type(rs.getString(2));
				st.setDocument_number(rs.getString(3));
				st.setRole(rs.getString(4));
				st.setStatus(rs.getString(5));
				st.setTurn(rs.getString(6));
				st.setNames(rs.getString(7));
				st.setLast_names(rs.getString(8));
				st.setBirthdate(rs.getString(9));
				st.setSection(rs.getString(10));
				st.setGrade(rs.getString(11));
				st.setEmail(rs.getString(12));
				st.setPhone_proxy(rs.getString(13));
				st.setCode_ubigeo(rs.getString(14));
			}
		} catch (Exception e) {
		}
		return st;
	}
	
	//Listar por nombres y/o apellidos activos
	public List<student> listarNOMyAPE(String names, String lastNames) {
	    String sql = "SELECT * FROM student WHERE names LIKE ? AND last_names LIKE ? AND status = 'A'";
	    List<student> studentList = new ArrayList<>();
	    try {
	        con = c.conectar();
	        ps = con.prepareStatement(sql);
	        ps.setString(1, "%" + names + "%");
	        ps.setString(2, "%" + lastNames + "%");
	        rs = ps.executeQuery();
	        while (rs.next()) {
	            student student = new student();
	            // Configurar los atributos del objeto Person
	            student.setId(rs.getString(1));
	            student.setDocument_type(rs.getString(2));
	            student.setDocument_number(rs.getString(3));
	            student.setRole(rs.getString(4));
	            student.setStatus(rs.getString(5));
	            student.setTurn(rs.getString(6));
	            student.setNames(rs.getString(7));
	            student.setLast_names(rs.getString(8));
	            student.setBirthdate(rs.getString(9));
	            student.setSection(rs.getString(10));
	            student.setGrade(rs.getString(11));
	            student.setEmail(rs.getString(12));
	            student.setPhone_proxy(rs.getString(13));
	            student.setCode_ubigeo(rs.getString(14));
	            studentList.add(student);
	        }
	    } catch (Exception e) {
	        // Manejar la excepción
	    }
	    return studentList;
	}
	
	
	//Listar por nombres y/o apellidos inactivos
	public List<student> listarNOMyAPEinactivos(String names, String lastNames) {
	    String sql = "SELECT * FROM student WHERE names LIKE ? AND last_names LIKE ? AND status = 'I'";
	    List<student> studentList = new ArrayList<>();
	    try {
	        con = c.conectar();
	        ps = con.prepareStatement(sql);
	        ps.setString(1, "%" + names + "%");
	        ps.setString(2, "%" + lastNames + "%");
	        rs = ps.executeQuery();
	        while (rs.next()) {
	            student student = new student();
	            // Configurar los atributos del objeto Person
	            student.setId(rs.getString(1));
	            student.setDocument_type(rs.getString(2));
	            student.setDocument_number(rs.getString(3));
	            student.setRole(rs.getString(4));
	            student.setStatus(rs.getString(5));
	            student.setTurn(rs.getString(6));
	            student.setNames(rs.getString(7));
	            student.setLast_names(rs.getString(8));
	            student.setBirthdate(rs.getString(9));
	            student.setSection(rs.getString(10));
	            student.setGrade(rs.getString(11));
	            student.setEmail(rs.getString(12));
	            student.setPhone_proxy(rs.getString(13));
	            student.setCode_ubigeo(rs.getString(14));
	            studentList.add(student);
	        }
	    } catch (Exception e) {
	        // Manejar la excepción
	    }
	    return studentList;
	}



	//actualizar
		public int actualizar(student s) {
			int r = 0;
			String sql = "update student set document_type=?, document_number=?, turn=?, names=?, last_names=?, birthdate=?, section=?, grade=?, email=?, phone_proxy=?, code_ubigeo=? where id=?";
			try {
				con = c.conectar();
				ps = con.prepareStatement(sql);
				ps.setString(1, s.getDocument_type());
				ps.setString(2, s.getDocument_number());
				ps.setString(3, s.getTurn());
				ps.setString(4, s.getNames());
				ps.setString(5, s.getLast_names());
				ps.setString(6, s.getBirthdate());
				ps.setString(7, s.getSection());
				ps.setString(8, s.getGrade());
				ps.setString(9, s.getEmail());
				ps.setString(10, s.getPhone_proxy());
				ps.setString(11, s.getCode_ubigeo());
				ps.setString(12, s.getId());
				ps.executeUpdate();
				r = ps.executeUpdate();
				if (r == 1) {
					r = 1;
				} else {
					r = 0;
				}
			} catch (Exception e) {
				System.out.println("Error al actualizar: " + e.getMessage());
			}
			return r;
		}
		


		
		public int actualizarAulas(List<student> studentsToUpdate) {
		    int totalActualizaciones = 0;
		    String sql = "UPDATE student SET turn=?, section=?, grade=? WHERE id=?";

		    try (Connection con = c.conectar();
		         PreparedStatement ps = con.prepareStatement(sql)) {

		        for (student s : studentsToUpdate) {
		            ps.setString(1, s.getTurn());
		            ps.setString(2, s.getSection());
		            ps.setString(3, s.getGrade());
		            ps.setString(4, s.getId());

		            ps.executeUpdate(); // Ejecutar la actualización
		            totalActualizaciones++;
		        }

		        System.out.println("Total de registros actualizados exitosamente: " + totalActualizaciones);
		    } catch (SQLException e) {
		        // Imprimir información adicional sobre la excepción SQL
		        System.err.println("Error al actualizar registros:");
		        System.err.println("Mensaje de error: " + e.getMessage());
		        System.err.println("Código de error SQL: " + e.getErrorCode());
		        System.err.println("Estado SQL: " + e.getSQLState());
		        e.printStackTrace();
		    }

		    return totalActualizaciones;
		}






		
	//Eliminado fisico
	public void delete(String id) {
		String sql = "delete from student where id=" + id;
		try {
			con = c.conectar();
			ps = con.prepareStatement(sql);
			ps.executeUpdate();
		} catch (Exception e) {
		}
	}

	// Eliminado logico
	public void deleteLogico(String id) {
	    String sql = "UPDATE student SET status='I' WHERE id=?";
	    try {
	        con = c.conectar();
	        ps = con.prepareStatement(sql);
	        ps.setString(1, id);
	        ps.executeUpdate();
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	}
	

	// Reactivacion logico
	public void activacionLogico(String id) {
	    String sql = "UPDATE student SET status='A' WHERE id=?";
	    try {
	        con = c.conectar();
	        ps = con.prepareStatement(sql);
	        ps.setString(1, id);
	        ps.executeUpdate();
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	}
}
