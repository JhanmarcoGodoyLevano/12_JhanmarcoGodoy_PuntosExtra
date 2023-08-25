<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<!-- codigo para poner logo en pestaña de navegador -->
<link rel="icon" type="image/png" sizes="100x100"
	href="img\Insignia SRC.png">

<title>N° DOC Student</title>
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

.input-notice {
	display: none;
	color: red;
}

@keyframes move {
  0% {
    transform: translateX(0);
  }
  50% {
    transform: translateX(-20px);
  }
  100% {
    transform: translateX(0);
  }
}

.animated-img {
  animation: move 2s infinite;
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
							href="#" class="nav-link text-white text-center"> <span
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
							class="nav-link text-white text-center active"> <span
								class="fs-4 ms-3 d-none d-sm-inline">ACTUALIZAR
									ESTUDIANTE</span>
						</a></li>
						<li class="nav-item py-2 py-sm-0 align-items-center"><a
							href="ActualizarAula.jsp"
							class="nav-link text-white text-center "> <span
								class="fs-4 ms-3 d-none d-sm-inline">ACTUALIZAR AULA</span>
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
													class="align-self-center">Estudiante</span>
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
					<div class="container">
						<div class="row">
							<div class="col-lg-4">
								<div class="mb-3">
									<form action="Controlador2" method="POST" class="mb-4">
										<div class="form-group">
											<label for="txtDocumentNumber">Document Number:</label> <input
												type="text" class="form-control" id="txtDocumentNumber"
												name="txtDocumentNumber"
												placeholder="Colocar el número de DNI o CNE">
											<div id="documentNumberNotice" class="input-notice"></div>
										</div>
										<script>
											const inputElement = document
													.getElementById('txtDocumentNumber');
											const noticeElement = document
													.getElementById('documentNumberNotice');

											inputElement
													.addEventListener(
															'input',
															function() {
																const value = this.value;
																const onlyNumbers = value
																		.replace(
																				/\D/g,
																				''); // Remover todos los caracteres no numéricos
																const limitedLength = onlyNumbers
																		.slice(
																				0,
																				20); // Limitar la longitud máxima a 20 dígitos

																this.value = limitedLength; // Establecer el valor actualizado en el campo de entrada

																if (value !== limitedLength) {
																	noticeElement.textContent = 'Alerta: Solo se permiten numeros validos (DNI 9 digitos y CNE 20 digitos)';
																	noticeElement.style.display = 'block';
																} else {
																	noticeElement.textContent = '';
																	noticeElement.style.display = 'none';
																}
															});
										</script>


										<button type="submit" class="btn btn-primary" name="accion"
											value="ListarDNIoCNE">Buscar</button>
											
											<input class="btn btn-primary" type="submit" name="accion"
										value="listar">
											
										<div class="col-lg-8 offset-lg-4">
											<input type="hidden" name="id" value="${student.getId()}">
											<br>
											<button type="submit" class="btn btn-success" name="accion"
													value="Editar">Actualizar</button>
											<button type="submit" class="btn btn-danger" name="accion"
												value="DeleteDOC">Eliminar</button>
										</div>
									</form>
								</div>
							</div>



							<div class="col-lg-8">
								<div class="col-md-10 mx-auto">
									<!-- Cuadro de datos del person -->
									<div class="card">
										<div class="card-body">
											<div id="resultContainer">
												<h2>Datos encontrados:</h2>

												<div class="row">
													<div class="col-lg-6 mb-3 text-center">
														<img src="img/Icono_Estudiante.png" alt="Usuario" width="100"
															height="100">
													</div>
													<div class="col-lg-6">
														<div class="mb-3">
															<label for="txtDocument_type">TIPO DOC:</label> <select
																class="form-control" name="txtDocument_type">
																<option value="${student.getDocument_type()}">${student.getDocument_type()}</option>
																<option value="">Eliga un documento</option>
																<option value="CNE">CNE</option>
																<option value="DNI">DNI</option>
															</select>
														</div>
														<div class="mb-3">
															<div class="form-group">
																<label for="txtDocument_number">N° DOC:</label> <input
																	type="text" class="form-control"
																	name="txtDocument_number"
																	value="${student.getDocument_number()}"
																	placeholder="Escribe numero de dccumento">
															</div>
														</div>
													</div>
												</div>

												<div class="row">
													<div class="col-6 mb-3">
														<div class="form-group">
															<label for="txtGrade">Grado:</label> <select
																class="form-control" name="txtGrade">
																<option value="${student.getGrade()}">${student.getGrade()}</option>
																<option value="1">1 SECUNDARIA</option>
																<option value="2">2 SECUNDARIA</option>
																<option value="3">3 SECUNDARIA</option>
																<option value="4">4 SECUNDARIA</option>
																<option value="5">5 SECUNDARIA</option>
															</select>
														</div>
													</div>
												</div>

												<div class="row">
													<div class="col-6 mb-3">
														<div class="form-group">
															<label for="txtTurn">TURNO:</label> <select
																class="form-control" name="txtTurn">
																<option value="${student.getTurn()}">${student.getTurn()}</option>														
																<option value="DIA">Dia</option>
																<option value="TARDE">Tarde</option>
															</select>
														</div>
													</div>

													<div class="col-6 mb-3">
														<div class="form-group">
															<label for="txtSection">Seccion:</label> <select
																class="form-control" name="txtSection">
																<option value="${student.getSection()}">${student.getSection()}</option>
																<option value="A">Sección A</option>
																<option value="B">Sección B</option>
																<option value="C">Sección C</option>
																<option value="D">Sección D</option>
																<option value="E">Sección E</option>
																<option value="F">Sección F</option>
															</select>
														</div>
													</div>
												</div>

												<div class="row">
													<div class="col-6 mb-3">
														<label for="txtNames">NOMBRE:</label> <input type="text"
															class="form-control" name="txtNames"
															value="${student.getNames()}">
													</div>

													<div class="col-6 mb-3">
														<label for="txtLast_names">APELLIDO:</label> <input
															type="text" class="form-control" name="txtLast_names"
															value="${student.getLast_names()}">
													</div>
												</div>

												<div class="row">

													<div class="col-6 mb-3">
														<label for="txtPhone_proxy">TELEFONO del
															apoderado:</label> <input type="text" class="form-control"
															name="txtPhone_proxy" value="${student.getPhone_proxy()}">
													</div>


													<div class="col-6 mb-3">
														<label for="txtEmail">EMAIL:</label> <input type="text"
															class="form-control" name="txtEmail"
															value="${student.getEmail()}">
													</div>
												</div>


												<div class="row">
													<div class="col-3 mb-3">
														<label for="txtBirthdate">NACIMIENTO:</label> <input
															type="date" class="form-control" name="txtBirthdate"
															value="${student.getBirthdate()}">
													</div>

													<div class="col-6 mb-3">
														<div class="form-group">
															<label for="txtCode_ubigeo">UBIGEO:</label> <select
																class="form-control" name="txtCode_ubigeo">
																<option value="${student.getCode_ubigeo()}">${student.getCityFromUbigeo()}</option>
																<option value="">Eliga su ubigeo segun su DNI</option>
																<option value="010101">AMAZONAS, CHACHAPOYAS,
																	CHACHAPOYAS</option>
																<option value="010102">AMAZONAS, CHACHAPOYAS,
																	ASUNCION</option>
																<option value="010103">AMAZONAS, CHACHAPOYAS,
																	BALSAS</option>
																<option value="010104">AMAZONAS, CHACHAPOYAS,
																	CHETO</option>
																<option value="010105">AMAZONAS, CHACHAPOYAS,
																	CHILIQUIN</option>
																<option value="010106">AMAZONAS, CHACHAPOYAS,
																	CHUQUIBAMBA</option>
															</select>
														</div>
													</div>

												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="https://kit.fontawesome.com/3d22aaea26.js"
		crossorigin="anonymous"></script>
</body>
</html>