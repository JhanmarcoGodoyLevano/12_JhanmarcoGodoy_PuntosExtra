package pe.edu.vallegrande.app.modelo;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

public class Update {
	private String idUpdate;
    private String studentId;
    private Date updateDateTime;
    private String state;
    private String description;
	
    public Update() {
		// TODO Auto-generated constructor stub
	}

	public Update(String idUpdate, String studentId, Date updateDatetime, String state, String description) {
		super();
		this.idUpdate = idUpdate;
		this.studentId = studentId;
		this.updateDateTime = updateDatetime;
		this.state = state;
		this.description = description;
	}

	public String getIdUpdate() {
		return idUpdate;
	}

	public void setIdUpdate(String idUpdate) {
		this.idUpdate = idUpdate;
	}

	public String getStudentId() {
		return studentId;
	}
	
	public Date getUpdateDateTime() {
		return updateDateTime;
	}

	public void setUpdateDateTime(Date updateDateTime) {
		this.updateDateTime = updateDateTime;
	}

	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}

	public String getState() {
		return state;
	}

	public void setState(String string) {
		this.state = string;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Override
	public String toString() {
		return "Attendance [idUpdate=" + idUpdate + ", studentId=" + studentId + ", updateDateTime="
				+ updateDateTime + ", state=" + state + ", description="
				+ description + "]";
	}
	
}


