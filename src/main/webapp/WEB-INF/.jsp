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
	background-image: url("img/COLEGIO.jpg");
	background-size: cover;
	background-position: center;
}

.input-custom {
	background-color: #C81D1D;
}

.placeholder-black::placeholder {
	color: white;
}
</style>
</head>
<body
	class="custom-bg d-flex justify-content-center align-items-center vh-100">



	<div class="container bg-white p-5 rounded-5 text-secondary shadow"
		style="width: 70rem">
		<h2 class="text-center mt-4">Agregar Personal</h2>

		<div class="text-center">
			<img src="img/iconoUSUARIO.png" alt="Usuario" width="100"
				height="100">
		</div>

		<form>
			<div class="row">
				<div class="col-lg-4 col-md-4 col-sm-4 mb-3">
					<label for="Sexo" class="form-label fw-bold fs-4 text-dark">Nombre</label>
					<input type="text"
						class="form-control input-custom placeholder-black" id="nombre"
						placeholder="Ingrese su nombre">
				</div>

				<div class="col-lg-4 col-md-4 col-sm-4 mb-3">
					<label for="Sexo" class="form-label fw-bold fs-4 text-dark">Apellido</label>
					<input type="text"
						class="form-control input-custom placeholder-black" id="apellido"
						placeholder="Ingrese su apellido">
				</div>

				<div class="col-lg-4 col-md-4 col-sm-4 mb-3">
					<label for="Sexo" class="form-label fw-bold fs-4 text-dark">DNI</label>
					<input type="text"
						class="form-control input-custom placeholder-black" id="DNI"
						placeholder="Ingrese su DNI">
				</div>

				<div class="col-lg-4 col-md-4 col-sm-6 mb-3">
					<label for="Sexo" class="form-label fw-bold fs-4 text-dark">Email</label>
					<input type="text"
						class="form-control input-custom placeholder-black" id="Email"
						placeholder="Ingrese su Email">
				</div>

				<div class="col-lg-4 col-md-4 col-sm-6 mb-3">
					<label for="Sexo" class="form-label fw-bold fs-4 text-dark">Telefono</label>
					<input type="text"
						class="form-control input-custom placeholder-black" id="Telefono"
						placeholder="Ingrese su Telefono">
				</div>

				<div class="col-lg-4 col-md-4 col-sm-6 mb-3">
					<label for="Sexo" class="form-label fw-bold fs-4 text-dark">Grados</label>
					<input type="text"
						class="form-control input-custom placeholder-black" id="Grados"
						placeholder="Ingrese su Grados">
				</div>

				<div class="col-lg-4 col-md-4 col-sm-6 mb-3">
					<label for="Sexo" class="form-label fw-bold fs-4 text-dark">Turno</label>
					<input type="text"
						class="form-control input-custom placeholder-black" id="edad"
						placeholder="Ingrese su Turno">
				</div>

				<div class="col-lg-4 col-md-4 col-sm-6 mb-3">
					<label for="Sexo" class="form-label fw-bold fs-4 text-dark">Sexo</label>
					<input type="text"
						class="form-control input-custom placeholder-black" id="Sexo"
						placeholder="Ingrese su Sexo">
				</div>

				<div class="col-lg-4 col-md-4 col-sm-6 mb-3">
					<label for="Sexo" class="form-label fw-bold fs-4 text-dark">Nacimiento</label> <input type="text"
						class="form-control input-custom placeholder-black"
						id="Fecha de nacimiento"
						placeholder="Ingrese su nacimiento">
				</div>
			</div>

			<div class="text-center">
				<button type="submit" class="btn btn-danger w-50">Crear
					Person</button>
			</div>
		</form>
	</div>

	<!-- Bootstrap Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>

</body>
</html>