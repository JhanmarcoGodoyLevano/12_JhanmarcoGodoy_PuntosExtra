package pe.edu.vallegrande.app.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import pe.edu.vallegrande.app.db.Conexion;
import pe.edu.vallegrande.app.modelo.person;

public class personDao {
	PreparedStatement ps;
	ResultSet rs;
	Conexion c = new Conexion();
	Connection con;
	
	// Listar person activos
	public List<person> listar() {
		List<person> lista = new ArrayList<>();
		String sql = "SELECT * FROM person WHERE status = 'A'";
		try {
			con = c.conectar();
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				person p = new person();
				p.setId(rs.getString(1));
				p.setDocument_type(rs.getString(2));
				p.setDocument_number(rs.getString(3));
				p.setRole(rs.getString(4));
				p.setStatus(rs.getString(5));
				p.setTurn(rs.getString(6));
				p.setGender(rs.getString(7));
				p.setNames(rs.getString(8));
				p.setLast_names(rs.getString(9));
				p.setBirthdate(rs.getString(10));
				p.setEmail(rs.getString(11));
				p.setPhone(rs.getString(12));
				p.setCode_ubigeo(rs.getString(13));
				lista.add(p);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return lista;
	}

	// Listar person inactivas
	public List<person> listarInactivos() {
		List<person> lista = new ArrayList<>();
		String sql = "SELECT * FROM person WHERE status = 'I'";
		try {
			con = c.conectar();
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				person p = new person();
				p.setId(rs.getString(1));
				p.setDocument_type(rs.getString(2));
				p.setDocument_number(rs.getString(3));
				p.setRole(rs.getString(4));
				p.setStatus(rs.getString(5));
				p.setTurn(rs.getString(6));
				p.setGender(rs.getString(7));
				p.setNames(rs.getString(8));
				p.setLast_names(rs.getString(9));
				p.setBirthdate(rs.getString(10));
				p.setEmail(rs.getString(11));
				p.setPhone(rs.getString(12));
				p.setCode_ubigeo(rs.getString(13));
				lista.add(p);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return lista;
	}

	// Este codigo es para hacer la prueba en consola
	public int agregar(person p) {
		int r = 0;
		String sql = "insert into person( document_type, document_number, role, turn, gender, names, last_names, birthdate, email, phone, code_ubigeo)values(?,?,?,?,?,?,?,?,?,?,?)";
		try {
			con = c.conectar();
			ps = con.prepareStatement(sql);
			// ps.setInt(1, j.getId());
			ps.setString(1, p.getDocument_type());
			ps.setString(2, p.getDocument_number());
			ps.setString(3, p.getRole());
			// ps.setString(4, p.getStatus());
			ps.setString(4, p.getTurn());
			ps.setString(5, p.getGender());
			ps.setString(6, p.getNames());
			ps.setString(7, p.getLast_names());
			ps.setString(8, p.getBirthdate());
			ps.setString(9, p.getEmail());
			ps.setString(10, p.getPhone());
			ps.setString(11, p.getCode_ubigeo());
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

	public person listarID(String id) {
		String sql = "select * from person where id=" + id;
		person p = new person();
		try {
			con = c.conectar();
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				p.setId(rs.getString(1));
				p.setDocument_type(rs.getString(2));
				p.setDocument_number(rs.getString(3));
				p.setRole(rs.getString(4));
				p.setStatus(rs.getString(5));
				p.setTurn(rs.getString(6));
				p.setGender(rs.getString(7));
				p.setNames(rs.getString(8));
				p.setLast_names(rs.getString(9));
				p.setBirthdate(rs.getString(10));
				p.setEmail(rs.getString(11));
				p.setPhone(rs.getString(12));
				p.setCode_ubigeo(rs.getString(13));
			}
		} catch (Exception e) {
		}
		return p;
	}

	public person listarDNIoCNE(String document_number) {
		String sql = "select * from person where document_number=" + document_number;
		person pe = new person();
		try {
			con = c.conectar();
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				pe.setId(rs.getString(1));
				pe.setDocument_type(rs.getString(2));
				pe.setDocument_number(rs.getString(3));
				pe.setRole(rs.getString(4));
				pe.setStatus(rs.getString(5));
				pe.setTurn(rs.getString(6));
				pe.setGender(rs.getString(7));
				pe.setNames(rs.getString(8));
				pe.setLast_names(rs.getString(9));
				pe.setBirthdate(rs.getString(10));
				pe.setEmail(rs.getString(11));
				pe.setPhone(rs.getString(12));
				pe.setCode_ubigeo(rs.getString(13));
			}
		} catch (Exception e) {
		}
		return pe;
	}

	
	//Listar por nombres y/o apellidos activos
	public List<person> listarNOMyAPE(String names, String lastNames) {
	    String sql = "SELECT * FROM person WHERE names LIKE ? AND last_names LIKE ? AND status = 'A'";
	    List<person> personList = new ArrayList<>();
	    try {
	        con = c.conectar();
	        ps = con.prepareStatement(sql);
	        ps.setString(1, "%" + names + "%");
	        ps.setString(2, "%" + lastNames + "%");
	        rs = ps.executeQuery();
	        while (rs.next()) {
	            person person = new person();
	            // Configurar los atributos del objeto Person
	            person.setId(rs.getString(1));
	            person.setDocument_type(rs.getString(2));
	            person.setDocument_number(rs.getString(3));
	            person.setRole(rs.getString(4));
	            person.setStatus(rs.getString(5));
	            person.setTurn(rs.getString(6));
	            person.setGender(rs.getString(7));
	            person.setNames(rs.getString(8));
	            person.setLast_names(rs.getString(9));
	            person.setBirthdate(rs.getString(10));
	            person.setEmail(rs.getString(11));
	            person.setPhone(rs.getString(12));
	            person.setCode_ubigeo(rs.getString(13));
	            personList.add(person);
	        }
	    } catch (Exception e) {
	        // Manejar la excepción
	    }
	    return personList;
	}
	
	
	//Listar por nombres y/o apellidos inactivos
	public List<person> listarNOMyAPEinactivos(String names, String lastNames) {
	    String sql = "SELECT * FROM person WHERE names LIKE ? AND last_names LIKE ? AND status = 'I'";
	    List<person> personList = new ArrayList<>();
	    try {
	        con = c.conectar();
	        ps = con.prepareStatement(sql);
	        ps.setString(1, "%" + names + "%");
	        ps.setString(2, "%" + lastNames + "%");
	        rs = ps.executeQuery();
	        while (rs.next()) {
	            person person = new person();
	            // Configurar los atributos del objeto Person
	            person.setId(rs.getString(1));
	            person.setDocument_type(rs.getString(2));
	            person.setDocument_number(rs.getString(3));
	            person.setRole(rs.getString(4));
	            person.setStatus(rs.getString(5));
	            person.setTurn(rs.getString(6));
	            person.setGender(rs.getString(7));
	            person.setNames(rs.getString(8));
	            person.setLast_names(rs.getString(9));
	            person.setBirthdate(rs.getString(10));
	            person.setEmail(rs.getString(11));
	            person.setPhone(rs.getString(12));
	            person.setCode_ubigeo(rs.getString(13));
	            personList.add(person);
	        }
	    } catch (Exception e) {
	        // Manejar la excepción
	    }
	    return personList;
	}

	
	

	//actualizar
	public int actualizar(person p) {
		int r = 0;
		String sql = "update person set document_type=?, document_number=?, role=?, status=?, turn=?, gender=?, names=?, last_names=?, birthdate=?, email=?, phone=?, code_ubigeo=? where id=?";
		try {
			con = c.conectar();
			ps = con.prepareStatement(sql);
			ps.setString(1, p.getDocument_type());
			ps.setString(2, p.getDocument_number());
			ps.setString(3, p.getRole());
			ps.setString(4, p.getStatus());
			ps.setString(5, p.getTurn());
			ps.setString(6, p.getGender());
			ps.setString(7, p.getNames());
			ps.setString(8, p.getLast_names());
			ps.setString(9, p.getBirthdate());
			ps.setString(10, p.getEmail());
			ps.setString(11, p.getPhone());
			ps.setString(12, p.getCode_ubigeo());
			ps.setString(13, p.getId());
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

	// Eliminado fisico
	public void delete(String id) {
		String sql = "delete from person where id=" + id;
		try {
			con = c.conectar();
			ps = con.prepareStatement(sql);
			ps.executeUpdate();
		} catch (Exception e) {
		}
	}

	// Eliminado logico
	public void deleteLogico(String id) {
		String sql = "UPDATE person SET status='I' WHERE id=?";
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
		String sql = "UPDATE person SET status='A' WHERE id=?";
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
