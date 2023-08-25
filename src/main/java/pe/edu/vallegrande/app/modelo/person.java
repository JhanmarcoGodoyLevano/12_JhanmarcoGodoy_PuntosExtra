package pe.edu.vallegrande.app.modelo;

import java.text.SimpleDateFormat;
import java.util.Date;

public class person {
	private String id;
	private String document_type;
	private String document_number;
	private String role;
	private String status;
	private String turn;
	private String gender;
	private String names;
	private String last_names;
	private String birthdate;
	private String email;
	private String phone;
	private String code_ubigeo;

	public person() {
	}

	public person(String id, String document_type, String document_number, String role, String status, String turn,
			String gender, String names, String last_names, String birthdate, String email, String phone,
			String code_ubigeo) {
		this.id = id;
		this.document_type = document_type;
		this.document_number = document_number;
		this.role = role;
		this.status = status;
		this.turn = turn;
		this.gender = gender;
		this.names = names;
		this.last_names = last_names;
		this.birthdate = birthdate;
		this.email = email;
		this.phone = phone;
		this.code_ubigeo = code_ubigeo;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getDocument_type() {
		return document_type;
	}

	public void setDocument_type(String document_type) {
		this.document_type = document_type;
	}

	public String getDocument_number() {
		return document_number;
	}

	public void setDocument_number(String document_number) {
		this.document_number = document_number;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getTurn() {
		return turn;
	}

	public void setTurn(String turn) {
		this.turn = turn;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getNames() {
		return names;
	}

	public void setNames(String names) {
		this.names = names;
	}

	public String getLast_names() {
		return last_names;
	}

	public void setLast_names(String last_names) {
		this.last_names = last_names;
	}

	public String getBirthdate() {
		return birthdate;
	}

	public void setBirthdate(String birthdate) {
		this.birthdate = birthdate;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getCode_ubigeo() {
		return code_ubigeo;
	}

	public void setCode_ubigeo(String code_ubigeo) {
		this.code_ubigeo = code_ubigeo;
	}
	
	@Override
	public String toString() {
		return "datos del person [id=" + id + ", document_type=" + document_type + ", document_number="
				+ document_number + ", role=" + role + ", status=" + status + ", turn=" + turn + ", gender=" + gender
				+ ", names=" + names + ", last_names=" + last_names + ", birthdate=" + birthdate + ", email=" + email
				+ ", phone=" + phone + ", code_ubigeo=" + code_ubigeo + "]";
	}
	
	
	
	public String getFormattedBirthdate() {
        SimpleDateFormat inputFormat = new SimpleDateFormat("yyyy-MM-dd");
        SimpleDateFormat outputFormat = new SimpleDateFormat("dd-MMM-yyyy");
        String formattedDate = "";

        try {
            Date birthdate = inputFormat.parse(this.getBirthdate());
            formattedDate = outputFormat.format(birthdate);
        } catch (Exception e) {
            e.printStackTrace();
            formattedDate = "Fecha Desconocida";
        }

        return formattedDate;
    }
	
	
	public String getTurnDB() {
	    String turn = this.getTurn();
	    // Lógica para mapear los códigos de ubigeo a las ciudades correspondientes
	    if (turn.equals("T")) {
	      return "Tarde";
	    } else if (turn.equals("D")) {
	      return "Dia";
	    } else {
	      return "genero Desconocida";
	    }
	  }
	

	public String getRoleDB() {
	    String role = this.getRole();
	    // Lógica para mapear los códigos de ubigeo a las ciudades correspondientes
	    if (role.equals("A")) {
	      return "Auxiliar";
	    } else if (role.equals("D")) {
	      return "Director";
	    } else {
	      return "genero Desconocida";
	    }
	  }
	
	public String getGenderDB() {
	    String gender = this.getGender();
	    // Lógica para mapear los códigos de ubigeo a las ciudades correspondientes
	    if (gender.equals("M")) {
	      return "Masculino";
	    } else if (gender.equals("F")) {
	      return "Femenino";
	    } else {
	      return "genero Desconocida";
	    }
	  }
	
	  public String getCityFromUbigeo() {
		    String ubigeo = this.getCode_ubigeo();
		    // Lógica para mapear los códigos de ubigeo a las ciudades correspondientes
		    if (ubigeo.equals("010101")) {
		      return "AMAZONAS, CHACHAPOYAS, CHACHAPOYAS";
		    } else if (ubigeo.equals("010102")) {
		      return "AMAZONAS, CHACHAPOYAS, ASUNCION";
		    } else if (ubigeo.equals("010103")) {
		      return "AMAZONAS, CHACHAPOYAS, BALSAS";
		    } else if (ubigeo.equals("010104")) {
		      return "AMAZONAS, CHACHAPOYAS, CHETO";
		    } else if (ubigeo.equals("010105")) {
			      return "AMAZONAS, CHACHAPOYAS, CHILIQUIN";
		    } else if (ubigeo.equals("010106")) {
			      return "AMAZONAS, CHACHAPOYAS, CHUQUIBAMBA";
		    } else {
		      return "Ciudad Desconocida";
		    }
		  }

}
