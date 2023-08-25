<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<!-- codigo para poner logo en pestaña de navegador -->
<link rel="icon" type="image/png" sizes="100x100"
	href="img\Insignia SRC.png">

<title>Registrar Asistencia</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
	crossorigin="anonymous"></script>
</head>

<style>
html, body {
	height: 100%;
	overflow: hidden;
}

.nav-pills li a:hover {
	background-color: orange;
}

.nav-link.active {
	background-color: orange !important;
}

.table-container {
	max-height: 300px; /* ajusta la altura máxima según tus necesidades */
	overflow-y: scroll;
}

.modal-pink {
	background-color: pink;
}

th.table-header {
	background-color: red;
	color: white;
}

td.table-cell {
	background-color: lightyellow;
}
</style>
<body>



	<div class="container-fluid">
		<div class="row flex-nowrap">
			<div
				class="bg-danger col-auto col-md-4 col-lg-2 min-vh-100 d-flex align-items-center">
				<div class="bg-danger p-2 align-items-center">
					<a href="HOME.jsp"
						class="d-flex text-decoration-none mt-1 align-items-center justify-content-center text-white">
						<img src="img\Insignia SRC.png" alt="Logo CASSIATEC"
						class="logo-img animated-img" style="height: 7rem">
					</a>
					<ul class="nav nav-pills flex-column mt-4">
						<li class="nav-item py-2 py-sm-0 align-items-center"><a
							href="HOME.jsp" class="nav-link text-white text-center"> <span
								class="fs-4 ms-3 d-none d-sm-inline">HOME</span>
						</a></li>
						<li class="nav-item py-2 py-sm-0 align-items-center"><a
							href="ActualizarMisDatos.jsp"
							class="nav-link text-white text-center"> <span
								class="fs-4 ms-3 d-none d-sm-inline">ACTUALIZAR MIS DATOS</span>
						</a></li>
						<li class="nav-item py-2 py-sm-0 align-items-center"><a
							href="RegistrarAsistencia.jsp"
							class="nav-link text-white text-center active"> <span
								class="fs-4 ms-3 d-none d-sm-inline">REGISTRAR ASISTENCIA</span>
						</a></li>
						<li class="nav-item py-2 py-sm-0 align-items-center"><a
							href="AgregarStudent.jsp" class="nav-link text-white text-center">
								<span class="fs-4 ms-3 d-none d-sm-inline">AGREGAR
									ESTUDIANTE</span>
						</a></li>
						<li class="nav-item py-2 py-sm-0 align-items-center"><a
							href="AgregarPerson.jsp" class="nav-link text-white text-center">
								<span class="fs-4 ms-3 d-none d-sm-inline">AGREGAR PERSON</span>
						</a></li>
						<li class="nav-item py-2 py-sm-0 align-items-center"><a
							href="ActualizarEstudiante.jsp"
							class="nav-link text-white text-center"> <span
								class="fs-4 ms-3 d-none d-sm-inline">ACTUALIZAR
									ESTUDIANTE</span>
						</a></li>
					</ul>
				</div>
			</div>

			<div class="col p-0">
				<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
					<div class="container-fluid">
						<span id="currentDateTime" class="nav-link text-white"> <span
							id="currentTime" style="font-size: 34px;"></span> - <span
							id="currentDate"></span>
						</span>
						<button class="navbar-toggler" type="button"
							data-bs-toggle="collapse" data-bs-target="#navbarNav"
							aria-controls="navbarNav" aria-expanded="false"
							aria-label="Toggle navigation">
							<span class="navbar-toggler-icon"></span>
						</button>
						<div class="collapse navbar-collapse justify-content-end"
							id="navbarNav">
							<ul class="navbar-nav">
								<li class="nav-item dropdown"><a
									class="nav-link dropdown-toggle text-white" href="#"
									id="logoutDropdown" role="button" data-bs-toggle="dropdown"
									aria-expanded="false"> Cerrar sesión </a>
									<ul class="dropdown-menu dropdown-menu-end"
										aria-labelledby="logoutDropdown">
										<li>
											<div class="d-flex flex-column align-items-center p-3">
												<img src="img\iconoUSUARIO.png" alt="Logo CASSIATEC"
													class="logo-img" style="height: 6rem"><span
													class="align-self-center">Auxiliar</span>
												<button class="btn btn-danger mt-2" data-bs-toggle="modal"
													data-bs-target="#confirmLogoutModal">Cerrar sesión</button>
											</div>
										</li>
									</ul></li>
							</ul>
						</div>
					</div>
				</nav>
				<script>
					// Obtener el elemento para mostrar la hora y fecha y actualizarlo cada segundo
					var currentDateTimeElement = document
							.getElementById("currentDateTime");

					// Función para obtener la hora actual en formato HH:MM:SS
					function getCurrentTime() {
						var currentDate = new Date();
						var hours = currentDate.getHours().toString().padStart(
								2, "0");
						var minutes = currentDate.getMinutes().toString()
								.padStart(2, "0");
						var seconds = currentDate.getSeconds().toString()
								.padStart(2, "0");
						return hours + ":" + minutes + ":" + seconds;
					}

					// Función para obtener la fecha actual en formato DD/MM/YYYY
					function getCurrentDate() {
						var currentDate = new Date();
						var days = [ 'Domingo', 'Lunes', 'Martes', 'Miércoles',
								'Jueves', 'Viernes', 'Sábado' ];
						var day = days[currentDate.getDay()];
						var date = currentDate.getDate().toString().padStart(2,
								"0");
						var months = [ 'enero', 'febrero', 'marzo', 'abril',
								'mayo', 'junio', 'julio', 'agosto',
								'septiembre', 'octubre', 'noviembre',
								'diciembre' ];
						var month = months[currentDate.getMonth()];
						var year = currentDate.getFullYear().toString();
						return day + ' ' + date + ' de ' + month + ' de '
								+ year;
					}

					// Actualizar la hora y fecha cada segundo
					function updateCurrentDateTime() {
						var currentTime = getCurrentTime();
						var currentDate = getCurrentDate();
						currentDateTimeElement.textContent = currentTime
								+ " - " + currentDate;
					}

					// Actualizar la hora y fecha inicial y luego cada segundo
					updateCurrentDateTime();
					setInterval(updateCurrentDateTime, 1000);

					function updateCurrentDateTime() {
						var currentTimeElement = document
								.getElementById("currentTime");
						var currentDateElement = document
								.getElementById("currentDate");

						var currentTime = getCurrentTime();
						var currentDate = getCurrentDate();

						currentTimeElement.textContent = currentTime;
						currentDateElement.textContent = currentDate;
					}
				</script>

				<!-- Modal -->
				<div class="modal fade" id="confirmLogoutModal" tabindex="-1"
					aria-labelledby="confirmLogoutModalLabel" aria-hidden="true">
					<div class="modal-dialog modal-dialog-centered">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="confirmLogoutModalLabel">Confirmar
									cierre de sesión</h5>
								<button type="button" class="btn-close" data-bs-dismiss="modal"
									aria-label="Close"></button>
							</div>
							<div class="modal-body">
								<div class="text-center mx-auto">
									<img src="img\cerrarSESION.png" alt="Logo CASSIATEC"
										class="logo-img" style="height: 6rem">
									<H4>
										<span>¿Desea cerrar <br>sesion?
										</span>
									</H4>
								</div>
							</div>
							<div class="modal-footer">
								<div class="text-center mx-auto">
									<button type="button" class="btn btn-danger"
										onclick="cerrarSesion()">Cerrar sesión</button>
									<script>
										function cerrarSesion() {
											// Redireccionar a la página de inicio de sesión
											window.location.href = "index.jsp";
										}
									</script>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="p-0">

					<form action="Controlador2" method="POST">
						<div class="row">

							<div class="col-2 mb-3">
								<div class="form-group">
									<label for="txtGrade">Grado:</label>
									<!-- Desplegable de Grado -->
									<select class="form-control" name="txtGrade" id="txtGrade">
										<option value="" disabled>Elegir el grado</option>
										<option value="1"
											<%if (request.getParameter("txtGrade") != null && request.getParameter("txtGrade").equals("1"))
	out.print("selected");%>>1
											SECUNDARIA</option>
										<option value="2"
											<%if (request.getParameter("txtGrade") != null && request.getParameter("txtGrade").equals("2"))
	out.print("selected");%>>2
											SECUNDARIA</option>
										<option value="3"
											<%if (request.getParameter("txtGrade") != null && request.getParameter("txtGrade").equals("3"))
	out.print("selected");%>>3
											SECUNDARIA</option>
										<option value="4"
											<%if (request.getParameter("txtGrade") != null && request.getParameter("txtGrade").equals("4"))
	out.print("selected");%>>4
											SECUNDARIA</option>
										<option value="5"
											<%if (request.getParameter("txtGrade") != null && request.getParameter("txtGrade").equals("5"))
	out.print("selected");%>>5
											SECUNDARIA</option>
									</select>
								</div>
							</div>

							<div class="col-2 mb-3">
								<div class="form-group">
									<label for="txtSection">Sección:</label>
									<!-- Desplegable de Sección -->
									<select class="form-control" name="txtSection" id="txtSection">
										<option value="" disabled>Elegir la sección</option>
										<option value="A"
											<%if (request.getParameter("txtSection") != null && request.getParameter("txtSection").equals("A"))
	out.print("selected");%>>Sección
											A</option>
										<option value="B"
											<%if (request.getParameter("txtSection") != null && request.getParameter("txtSection").equals("B"))
	out.print("selected");%>>Sección
											B</option>
										<option value="C"
											<%if (request.getParameter("txtSection") != null && request.getParameter("txtSection").equals("C"))
	out.print("selected");%>>Sección
											C</option>
										<option value="D"
											<%if (request.getParameter("txtSection") != null && request.getParameter("txtSection").equals("D"))
	out.print("selected");%>>Sección
											D</option>
										<option value="E"
											<%if (request.getParameter("txtSection") != null && request.getParameter("txtSection").equals("E"))
	out.print("selected");%>>Sección
											E</option>
										<option value="F"
											<%if (request.getParameter("txtSection") != null && request.getParameter("txtSection").equals("F"))
	out.print("selected");%>>Sección
											F</option>
									</select>
								</div>
							</div>

							<div class="col-2 mb-3">
								<div class="form-group">
									<label for="txtTurn">TURNO:</label>
									<!-- Desplegable de Turno -->
									<select class="form-control" name="txtTurn" id="txtTurn">
										<option value="" disabled>Elegir el turno</option>
										<option value="DIA"
											<%if (request.getParameter("txtTurn") != null && request.getParameter("txtTurn").equals("DIA"))
	out.print("selected");%>>Dia</option>
										<option value="TARDE"
											<%if (request.getParameter("txtTurn") != null && request.getParameter("txtTurn").equals("TARDE"))
	out.print("selected");%>>Tarde</option>
									</select>
								</div>

							</div>
							<div class="col-6 mb-3">
								<div class="form-group">
									<h2 style="text-align: center;">AULA:</h2>
									<h3 style="text-align: center;" id="aulaSeleccionada">Poner
										aula aquí</h3>
									<script>
										// Obtener los elementos select de los desplegables
										var gradeSelect = document
												.getElementById("txtGrade");
										var sectionSelect = document
												.getElementById("txtSection");
										var turnSelect = document
												.getElementById("txtTurn");

										// Agregar un listener al evento change de los desplegables
										gradeSelect.addEventListener("change",
												actualizarAulaSeleccionada);
										sectionSelect.addEventListener(
												"change",
												actualizarAulaSeleccionada);
										turnSelect.addEventListener("change",
												actualizarAulaSeleccionada);

										// Función para actualizar el contenido del elemento <h3>
										function actualizarAulaSeleccionada() {
											// Obtener los valores seleccionados de los desplegables
											var grado = gradeSelect.value;
											var seccion = sectionSelect.value;
											var turno = turnSelect.value;

											// Construir el texto del aula seleccionada
											var aulaSeleccionada = "Grado: "
													+ grado + " - Sección: "
													+ seccion + " - Turno: "
													+ turno;

											// Actualizar el contenido del elemento <h3>
											document
													.getElementById("aulaSeleccionada").textContent = aulaSeleccionada;
										}

										// Llamar a la función para mostrar la selección inicial
										actualizarAulaSeleccionada();
									</script>


								</div>
							</div>
						</div>

						<div class="text-left">
							<input type="submit" class="btn btn-success w-25" name="accion"
								value="BuscarAula"> <input type="submit"
								class="btn btn-danger w-25" name="accion" value="UsarQR">

						</div>

					</form>



					<%@ page import="java.util.Calendar"%>
					<%
					// Obtener la fecha actual
					Calendar calendar = Calendar.getInstance();
					int year = calendar.get(Calendar.YEAR);
					int month = calendar.get(Calendar.MONTH) + 1; // Los meses en Calendar van de 0 a 11, por eso se suma 1
					int day = calendar.get(Calendar.DAY_OF_MONTH);
					%>
					<!-- action="Controlador2" method="POST" -->
					<form action="Controlador2" method="POST">
						<div class="contenido">
							<table class="table table-bordered" id="tablaPerson">
								<thead>
									<tr>
										<th class="table-header">N° DOC</th>
										<th class="table-header">APELLIDO, NOMBRES</th>
										<th class="table-header">Fecha: <%=day + "/" + month + "/" + year%></th>
										<th class="table-header">Ocurrencia</th>
										<th class="table-header">Reporte</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="student" items="${students}">
										<tr>
											<td class="table-cell">${student.getDocument_number()}</td>
											<td class="table-cell">${student.getLast_names()},
												${student.getNames()}</td>
											<td class="table-cell"><select class="form-control"
												name="attendanceStatus_${student.getId()}"
												id="attendanceStatus_${student.getId()}">
													<option value="" disabled selected>Elegir
														asistencia</option>
													<option value="A">Asistió</option>
													<option value="F">Faltó</option>
													<option value="J">Justificó</option>
											</select></td>
											<td class="table-cell"><input type="text"
												class="form-control"
												name="attendanceOcurrencia_${student.getId()}"
												id="attendanceOcurrencia_${student.getId()}"
												placeholder="Escribe la ocurrencia"></td>
											
											
											<td class="table-cell">
											<form action="Controlador2" method="POST">
													<input type="hidden" name="studentId"
														value="${student.getId()}" /> <input type="hidden"
														name="studentDocument"
														value="${student.getDocument_number()}"> <input
														type="hidden" name="studentLastNames"
														value="${student.getLast_names()}"> <input
														type="hidden" name="studentNames"
														value="${student.getNames()}">

													<button type="submit" class="btn btn-warning" name="accion"
														value="GenerarReporte">Generar Reporte</button>
												</form>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						<input type="submit" class="btn btn-info w-25" name="accion"
							value="GuardarAsistencia">
					</form>


				</div>
			</div>


		</div>

	</div>


	<script src="https://kit.fontawesome.com/3d22aaea26.js"
		crossorigin="anonymous"></script>
</body>
</html>