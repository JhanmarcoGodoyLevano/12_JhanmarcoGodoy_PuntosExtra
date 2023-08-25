<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<link rel="icon" type="image/x-icon" href="/assets/logo-vt.svg" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Login SRC</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
	crossorigin="anonymous" />
<style>
.custom-bg {
	background-image: url("img/actualizar.png");
	background-size: cover;
	background-position: center;
}
</style>
</head>
<body
	class="custom-bg d-flex justify-content-center align-items-center vh-100">



	<div class="container">
		<div class="row">
			<div class="col-md-10 mx-auto">
				<div class="card">
					<div class="card-body">
						<!-- Aquí puedes agregar los datos del person (auxiliar o director) -->
						<h2 class="text-center mt-4">Actualizar mis datos</h2>

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

						<form>
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
					<a href="#" class="btn btn-success mb-2"> Actualizar <br>mis datos
					</a>
				</div>
			</div>
		</div>
	</div>

	<!-- Bootstrap Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>

</body>
</html>