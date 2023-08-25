<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />


<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Login SRC</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
</head>
<body>
	<!-- class="custom-bg d-flex justify-content-center align-items-center vh-100"> -->

	<!-- menu -->
	<nav class="navbar navbar-dark bg-danger">
		<a style="color: white" class="navbar-toggler"><span
			class="navbar-toggler-icon">Home</span></a>
		<div class="dropdown">
			<a style="color: white" href="#" class="nav-link dropdown-toggle"
				data-toggle="dropdown">Cerrar sesion</a>
			<div class="dropdown-menu text-center">
				<a><img src="img\Insignia SRC.png" height="100" width="80"></a><br>
				<a>User</a> <a>juana@gmail.com</a>
				<div class="dropdown-divider"></div>
				<a href="index.jsp" class="dropdown-item">Salir</a>
			</div>
		</div>
	</nav>
	<!-- menu -->

	<div class="container">
		<div class="row">
			<div class="col-md-10 mx-auto">
				<div class="card">
					<div class="card-body">
						<!-- Aquí puedes agregar los datos del person (auxiliar o director) -->
						<h2 class="text-center mt-4">¡Bienvenido <strong>Auxiliar</strong>!</h2>
						<form action="Controlador" method="POST">
							<div class="row">
								<div
									class="col-lg-6 mb-3 text-center d-flex justify-content-center">
									<img src="img/iconoUSUARIO.png" alt="Usuario" width="100"
										height="100" class="align-self-center">
								</div>
								<div class="col-lg-6">
									<div class="mb-3">
										<label for="nombre" class="form-label">Nombre:</label> <input
											type="text" class="form-control" id="nombre"
											placeholder="Ingrese su nombre">
									</div>
									<div class="mb-3">
										<label for="apellido" class="form-label">Apellido:</label> <input
											type="text" class="form-control" id="apellido"
											placeholder="Ingrese su apellido">
									</div>
								</div>
							</div>


							<!--<div class="row">
								<div class="col-6 mb-3">
									<label for="nombre" class="form-label">Nombre:</label> <input
										type="text" class="form-control" id="nombre"
										placeholder="Ingrese su nombre">
								</div>

								<div class="col-6 mb-3">
									<label for="apellido" class="form-label">Apellido:</label> <input
										type="text" class="form-control" id="apellido"
										placeholder="Ingrese su apellido">
								</div>
							</div>-->

							<div class="row">
								<div class="col-6 mb-3">
									<label for="DNI" class="form-label">DNI:</label> <input
										type="text" class="form-control" id="DNI"
										placeholder="Ingrese su DNI">
								</div>

								<div class="col-6 mb-3">
									<label for="Email" class="form-label">Email:</label> <input
										type="text" class="form-control" id="Email"
										placeholder="Ingrese su Email">
								</div>
							</div>

							<div class="row">
								<div class="col-6 mb-3">
									<label for="Telefono" class="form-label">Telefono:</label> <input
										type="text" class="form-control" id="Telefono"
										placeholder="Ingrese su Telefono">
								</div>

								<div class="col-6 mb-3">
									<label for="Grados" class="form-label">Grado:</label> <input
										type="text" class="form-control" id="Grado"
										placeholder="Ingrese su Grado">
								</div>
							</div>

							<div class="row">
								<div class="col-6 mb-3">
									<label for="Turno" class="form-label">Turno:</label> <input
										type="text" class="form-control" id="edad"
										placeholder="Ingrese su Turno">
								</div>

								<div class="col-6 mb-3">
									<label for="Sexo" class="form-label">Seccion:</label> <input
										type="text" class="form-control" id="Seccion"
										placeholder="Ingrese su Seccion">
								</div>
							</div>

							<div class="row justify-content-center">
								<div class="col-lg-6 col-md-8 col-sm-10 col-12 mb-3">
									<label for="Fecha de nacimiento"
										class="form-label col-12 mb-3 text-center text-dark">Fecha
										de nacimiento:</label> <input type="text"
										class="form-control text-center input-custom placeholder-black"
										id="Fecha de nacimiento"
										placeholder="Ingrese su Fecha de nacimiento">
								</div>
							</div>

						</form>
					</div>
				</div>
			</div>

			<div class="col-md-2 mx-auto d-flex align-items-center">
				<div class="d-flex flex-row flex-md-column flex-md-wrap">
					<a href="ActualizarMiDato.jsp" class="btn btn-danger mb-2">
						Actualizar <br>mis datos
					</a>
					<button class="btn btn-danger mb-2">
						Registrar <br>Asistencia
					</button>
					<a href="nuevaStudent.jsp" class="btn btn-danger mb-2"> Agregar
						<br>Student
					</a> <a href="nuevaPerson.jsp" class="btn btn-danger mb-2"> Agregar
						<br>Person
					</a> <a href="actualizarStudent.jsp" class="btn btn-danger mb-2">
						Actualizar <br>Estudiante
					</a>
				</div>
			</div>
		</div>
	</div>

	<!-- Bootstrap Bundle with Popper -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"
		integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
		crossorigin="anonymous"></script>
</body>
</html>