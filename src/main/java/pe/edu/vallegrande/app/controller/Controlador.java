package pe.edu.vallegrande.app.controller;

import java.io.IOException;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pe.edu.vallegrande.app.modelo.person;
import pe.edu.vallegrande.app.service.personDao;

/**
 * Servlet implementation class Controlador
 */
@WebServlet("/Controlador")
public class Controlador extends HttpServlet {

	personDao dao = new personDao();
	person p = new person();
	person pe = new person();

	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Controlador() {
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String accion = request.getParameter("accion");
		switch (accion) {
		case "Listar":
			List<person> datos = dao.listar();
			request.setAttribute("datos", datos);
			request.getRequestDispatcher("crudCompleto.jsp").forward(request, response);
			break;
		case "ListarDNIoCNE":
			String documentNumber = request.getParameter("txtDocumentNumber");
			personDao personDao = new personDao();
			person person = personDao.listarDNIoCNE(documentNumber);
			request.setAttribute("person", person);
			request.setAttribute("listadoDOC", true);
			request.getRequestDispatcher("ResultadoVerDoc.jsp").forward(request, response);
			break;
		case "ListarNOMBREyAPELLIDO":
			String names = request.getParameter("txtNames");
			String lastNames = request.getParameter("txtLast_names");

			if (names.isEmpty() && lastNames.isEmpty()) {
				// Los dos campos están vacíos, establecer mensaje de error en variable
				String errorMessage = "No se aceptan campos vacíos para la búsqueda";
				request.setAttribute("errorMessage", errorMessage);
			} else {
				List<person> personListNOMAPE = dao.listarNOMyAPE(names, lastNames);
				System.out.println("Cantidad de personas encontradas: " + personListNOMAPE.size());
				request.setAttribute("personList", personListNOMAPE);
			}
			request.getRequestDispatcher("MostrarNombreApellido.jsp").forward(request, response);
			break;
		case "ListarNOMBREyAPELLIDOeliminados":
			String names1 = request.getParameter("txtNames");
			String lastNames1 = request.getParameter("txtLast_names");

			if (names1.isEmpty() && lastNames1.isEmpty()) {
				// Los dos campos están vacíos, establecer mensaje de error en variable
				String errorMessage = "No se aceptan campos vacíos para la búsqueda";
				request.setAttribute("errorMessage", errorMessage);
			} else {
				List<person> personListNOMAPE = dao.listarNOMyAPEinactivos(names1, lastNames1);
				System.out.println("Cantidad de personas encontradas: " + personListNOMAPE.size());
				request.setAttribute("personList", personListNOMAPE);
			}
			request.getRequestDispatcher("MostrarNombreApellidoeliminados.jsp").forward(request, response);
			break;
		case "ListarEliminados":
			List<person> datos1 = dao.listarInactivos();
			request.setAttribute("datos", datos1);
			request.getRequestDispatcher("listarELIMINADOSperson.jsp").forward(request, response);
			break;
		case "Guardar":
			String id = request.getParameter("txtid");
			String Document_type = request.getParameter("txtDocument_type");
			String Document_number = request.getParameter("txtDocument_number");
			String Role = request.getParameter("txtRole");
			String Status = request.getParameter("txtStatus");
			String Turn = request.getParameter("txtTurn");
			String Gender = request.getParameter("txtGender");
			String Names = request.getParameter("txtNames");
			String Last_names = request.getParameter("txtLast_names");
			String Birthdate = request.getParameter("txtBirthdate");
			String Email = request.getParameter("txtEmail");
			String Phone = request.getParameter("txtPhone");
			String Code_ubigeo = request.getParameter("txtCode_ubigeo");
			p.setId(id);
			p.setDocument_type(Document_type);
			p.setDocument_number(Document_number);
			p.setRole(Role);
			p.setStatus(Status);
			p.setTurn(Turn);
			p.setGender(Gender);
			p.setNames(Names);
			p.setLast_names(Last_names);
			p.setBirthdate(Birthdate);
			p.setEmail(Email);
			p.setPhone(Phone);
			p.setCode_ubigeo(Code_ubigeo);
			// Realizar la inserción en la base de datos
			int resultadoInsercion = dao.agregar(p);

			// Verificar el resultado de la inserción
			boolean insercionExitosa = (resultadoInsercion > 0);
			String mensajeResultado;

			if (insercionExitosa) {
				mensajeResultado = "Se ha agregado un person nuevo con exito";
			} else {
				mensajeResultado = "No se pudo agregar al person. Por favor, verifique sus datos sean unicos y no dejar campos vacios";
			}

			// Guardar el resultado en una variable
			request.setAttribute("mensajeResultado", mensajeResultado);

			request.getRequestDispatcher("AgregarPerson.jsp").forward(request, response);
			break;
		case "Editar":
		    String ide = request.getParameter("id");
		    person p = dao.listarID(ide);
		    request.setAttribute("person", p);
		    request.getRequestDispatcher("EditarPerson.jsp").forward(request, response);
		    break;
		case "Actualizar":
		    String id1 = request.getParameter("txtid");
		    String documentType1 = request.getParameter("txtDocument_type");
		    String documentNumber1 = request.getParameter("txtDocument_number");
		    String role1 = request.getParameter("txtRole");
		    String status1 = request.getParameter("txtStatus");
		    String turn1 = request.getParameter("txtTurn");
		    String gender1 = request.getParameter("txtGender");
		    String Names1 = request.getParameter("txtNames");
		    String Last_names1 = request.getParameter("txtLast_names");
		    String birthdate1 = request.getParameter("txtBirthdate");
		    String email1 = request.getParameter("txtEmail");
		    String phone1 = request.getParameter("txtPhone");
		    String codeUbigeo1 = request.getParameter("txtCode_ubigeo");

		    // Crear un nuevo objeto person con los datos ingresados
		    person pe = new person();
		    pe.setId(id1);
		    pe.setDocument_type(documentType1);
		    pe.setDocument_number(documentNumber1);
		    pe.setRole(role1);
		    pe.setStatus(status1);
		    pe.setTurn(turn1);
		    pe.setGender(gender1);
		    pe.setNames(Names1);
		    pe.setLast_names(Last_names1);
		    pe.setBirthdate(birthdate1);
		    pe.setEmail(email1);
		    pe.setPhone(phone1);
		    pe.setCode_ubigeo(codeUbigeo1);

		    // Realizar la actualización en la base de datos
		    int resultadoActualizacion = dao.actualizar(pe);

		    // Verificar el resultado de la actualización
		    if (resultadoActualizacion > 0) {
		        // La actualización fue exitosa
		        String mensajeResultadoActualizacion = "Se ha actualizado el person con éxito";
		        request.setAttribute("Actualizar", true);
		        request.setAttribute("mensajeResultadoActualizacion", mensajeResultadoActualizacion);
		        request.getRequestDispatcher("Controlador?accion=Listar").forward(request, response);
		    } else {
		        // La actualización no fue exitosa
		        String mensajeResultadoActualizacion = "No se pudo actualizar el person. Por favor, verifique que los datos sean únicos y no deje campos vacíos";

		        // Guardar el resultado y el objeto pe en variables de solicitud
		        request.setAttribute("Actualizar", false);
		        request.setAttribute("mensajeResultadoActualizacion", mensajeResultadoActualizacion);
		        request.setAttribute("pe", pe);

		        // Redireccionar a la acción "Editar" con los datos del objeto pe
		        request.getRequestDispatcher("Controlador?accion=Editar&id=" + id1).forward(request, response);
		    }
		    break;
		case "Delete":
		    String id2 = request.getParameter("id");
		    dao.deleteLogico(id2);
		    request.setAttribute("eliminado", true);
		    request.getRequestDispatcher("Controlador?accion=Listar").forward(request, response);
		    break;
		case "DeleteDOC":
		    String id5 = request.getParameter("id");
		    dao.deleteLogico(id5);
		    request.setAttribute("eliminado", true);
		    request.getRequestDispatcher("Controlador?accion=ListarEliminados").forward(request, response);
		    break;
		case "Reactivar":
			String id3 = request.getParameter("id");
			dao.activacionLogico(id3);
			request.setAttribute("reactivado", true);
			request.getRequestDispatcher("Controlador?accion=Listar").forward(request, response);
			break;
		case "EliminadoFisico":
			String id4 = request.getParameter("id");
			dao.delete(id4);
			request.getRequestDispatcher("Controlador?accion=ListarEliminados").forward(request, response);
			break;
		default:
			throw new AssertionError();
		}

	}

}
