package pe.edu.vallegrande.app.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pe.edu.vallegrande.app.modelo.Attendance;
import pe.edu.vallegrande.app.modelo.Update;
import pe.edu.vallegrande.app.modelo.student;
import pe.edu.vallegrande.app.service.AttendanceDao;
import pe.edu.vallegrande.app.service.UpdateDao;
import pe.edu.vallegrande.app.service.studentDao;

/**
 * Servlet implementation class Controlador
 */
@WebServlet("/Controlador3")
public class Controlador3 extends HttpServlet {

	studentDao dao = new studentDao();
	student s = new student();
	student st = new student();
	
	AttendanceDao daoAsis = new AttendanceDao();
	Attendance asis = new Attendance();

	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Controlador3() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String accion = request.getParameter("accion");
        switch (accion) {
			
			
			case "Guardar":
			    	String id = request.getParameter("txtid");
					String Document_type = request.getParameter("txtDocument_type");
					String Document_number = request.getParameter("txtDocument_number");
					String Status = request.getParameter("txtStatus");
					String Turn = request.getParameter("txtTurn");
					String Names = request.getParameter("txtNames");
					String Last_names = request.getParameter("txtLast_names");
					String Birthdate = request.getParameter("txtBirthdate");
					String Section = request.getParameter("txtSection");
					String Grade = request.getParameter("txtGrade");
					String Email = request.getParameter("txtEmail");
					String Phone_proxy = request.getParameter("txtPhone");
					String Code_ubigeo = request.getParameter("txtCode_ubigeo");
					s.setId(id);
					s.setDocument_type(Document_type);
					s.setDocument_number(Document_number);
					s.setStatus(Status);
					s.setTurn(Turn);
					s.setNames(Names);
					s.setLast_names(Last_names);
					s.setBirthdate(Birthdate);
					s.setSection(Section);
					s.setGrade(Grade);
					s.setEmail(Email);
					s.setPhone_proxy(Phone_proxy);
					s.setCode_ubigeo(Code_ubigeo);

					// Realizar la inserción en la base de datos
					int resultadoInsercion = dao.agregar(s);

					// Verificar el resultado de la inserción
					boolean insercionExitosa = (resultadoInsercion > 0);
					String mensajeResultado;

					if (insercionExitosa) {
					    mensajeResultado = "Se ha agregado una estudiante nuevo con exito";
					} else {
					    mensajeResultado = "No se pudo agregar al estudiante. Por favor, verifique sus datos sean unicos y no dejar campos vacios";
					}

					// Guardar el resultado en una variable
					request.setAttribute("mensajeResultado", mensajeResultado);

					request.getRequestDispatcher("AgregarStudent.jsp").forward(request, response);
					break;
					

			case "Actualizar":
			    String[] ids = request.getParameterValues("txtid");
			    String[] turns = request.getParameterValues("txtTurn");
			    String[] sections = request.getParameterValues("txtSection");
			    String[] grades = request.getParameterValues("txtGrade");

			    if (ids != null && turns != null && sections != null && grades != null) {
			        List<student> studentsToUpdate = new ArrayList<>();

			        for (int i = 0; i < ids.length; i++) {
			            student st = new student();
			            st.setId(ids[i]);
			            st.setTurn(turns[i]);
			            st.setSection(sections[i]);
			            st.setGrade(grades[i]);

			            studentsToUpdate.add(st);
			        }

			        int totalActualizaciones = dao.actualizarAulas(studentsToUpdate);

			        if (totalActualizaciones > 0) {
			            // La actualización fue exitosa
			            String mensajeResultadoActualizacion = "Se han actualizado los estudiantes con éxito";
			            request.setAttribute("actualizacionExitosa", true);
			            request.setAttribute("mensajeResultadoActualizacion", mensajeResultadoActualizacion);
			        } else {
			            // La actualización no fue exitosa
			            String mensajeResultadoActualizacion = "No se pudo actualizar los estudiantes. Por favor, verifique que los datos sean únicos y no deje campos vacíos";
			            request.setAttribute("actualizacionExitosa", false);
			            request.setAttribute("mensajeResultadoActualizacion", mensajeResultadoActualizacion);
			            request.setAttribute("studentsToUpdate", studentsToUpdate);
			        }
			    } else {
			        // Alguno de los arrays es nulo, realizar la acción apropiada
			        // por ejemplo, redirigir a una página de error o mostrar un mensaje de error
			    }

			    // Redirigir a la página de resultados
			    request.getRequestDispatcher("Controlador3?accion=BuscarAula").forward(request, response);
			    break;

			case "GuardarReporteAnual":
			    UpdateDao updateDao = new UpdateDao();
			    List<Update> updateList = new ArrayList<>();

			    // Obtener los parámetros del formulario
			    Enumeration<String> parameterNames = request.getParameterNames();
			    while (parameterNames.hasMoreElements()) {
			        String paramName = parameterNames.nextElement();
			        if (paramName.startsWith("state")) {
			            String studentId = paramName.replace("state_", "");
			            String state = request.getParameter(paramName);
			            String description = request.getParameter("description_" + studentId); // Obtener la ocurrencia

			            Update update = new Update();
			            update.setStudentId(studentId);
			            update.setState(state);
			            update.setDescription(description); // Establecer la ocurrencia
			            updateList.add(update);
			        }
			    }

			    int result = updateDao.guardarActualizacionGrupal(updateList);

			    if (result == 1) {
			        request.setAttribute("mensaje", "Asistencia guardada exitosamente");
			    } else {
			        request.setAttribute("mensaje", "Error al guardar la asistencia");
			    }

			    // Redireccionar a la página de resultados o a donde desees mostrar el mensaje
			    request.getRequestDispatcher("ActualizarAulaRegistrar.jsp").forward(request, response);
			    break;
			    





			
			case "BuscarAula":		    
			    String grado = request.getParameter("txtGrade");
	            String seccion = request.getParameter("txtSection");
	            String turno = request.getParameter("txtTurn");
	            List<student> students = dao.BuscarParaActualizarAula(turno, seccion, grado); 
			    request.setAttribute("students", students);
			    request.getRequestDispatcher("ActualizarAulaRegistrar.jsp").forward(request, response);
			    break;
			    
			case "Buscar para Pasar de Año":		    
			    String grado1 = request.getParameter("txtGrade");
	            String seccion1 = request.getParameter("txtSection");
	            String turno1 = request.getParameter("txtTurn");
	            List<student> students1 = dao.BuscarParaActualizarAula(turno1, seccion1, grado1); 
			    request.setAttribute("students", students1);
			    request.getRequestDispatcher("ActualizarAulaResultados.jsp").forward(request, response);
			    break;
			    
			case "GenerarReporte":
				String studentId = request.getParameter("studentId");

			    System.out.println("ID del estudiante: " + studentId); // Agrega esta línea para verificar el ID

			    UpdateDao updateDao1 = new UpdateDao();
			    List<Update> reporte = updateDao1.obtenerReporteIndividual(studentId);

			    System.out.println("Reporte individual del estudiante " + studentId + ":"); // Agrega esta línea para verificar el reporte
			    for (Update update : reporte) {
			        System.out.println("Fecha: " + update.getUpdateDateTime());
			        System.out.println("Estado: " + update.getState());
			        System.out.println("Descripcion: " + update.getDescription());
			        System.out.println("------------------------");
			    }

			    request.setAttribute("reporte", reporte);
			    request.getRequestDispatcher("ReporteAnual.jsp").forward(request, response);
			    break;

			case "ActualizarSalon":
			    request.getRequestDispatcher("ActualizarAulaResultados.jsp").forward(request, response);
			    break;  
			    
			case "BuscarOtraAula":
			    request.getRequestDispatcher("ActualizarAula.jsp").forward(request, response);
			    break;    

			default:
				throw new AssertionError();
		}
		
	}

}