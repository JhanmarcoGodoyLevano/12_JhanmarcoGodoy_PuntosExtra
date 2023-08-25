<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<link rel="icon" type="image/x-icon" href="/assets/logo-vt.svg" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>CRUD person</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
	crossorigin="anonymous"></script>
<style>
.delete-button {
	cursor: pointer;
	background: transparent;
	border: none;
	padding: 0;
}

.custom-modal-dialog {
	max-width: 90%;
	width: fit-content;
}
</style>
</head>
<body
	class="custom-bg d-flex justify-content-center align-items-center vh-100">





	<center>
		<div class="container">
			<h3>person</h3>
			<form class="mb-3" action="Controlador" method="POST">
				<input class="btn btn-primary" type="submit" name="accion"
					value="Listar">

				<!-- Button Agregar Estudiante modal -->
				<button type="button" class="btn btn-primary" data-bs-toggle="modal"
					data-bs-target="#exampleModal">Agregar Estudiante</button>


				<input class="btn btn-warning" data-bs-toggle="modal"
					data-bs-target="#exampleModa2" type="submit" name="accion"
					value="ListarEliminados">



				<form class="mb-3" action="Controlador" method="POST">
					<!-- Button Reactivar Estudiante modal -->
					<button type="button" class="btn btn-warning"
						data-bs-toggle="modal" data-bs-target="#exampleModa2">Reactivar
						Estudiante</button>
				</form>
				<!-- Modal AGREGAR estudiante -->
				<div class="modal fade" id="exampleModal" tabindex="-1"
					aria-labelledby="exampleModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<h1 class="modal-title fs-5" id="exampleModalLabel">agregar
									Estudiante XD</h1>
								<button type="button" class="btn-close" data-bs-dismiss="modal"
									aria-label="Close"></button>
							</div>
							<div class="modal-body">
								<center>
									<div class="container">
										<form action="Controlador" method="POST">
											<!-- 				<div class="form-group"> -->
											<!-- 					<label for="txtid">ID:</label> <input type="text" -->
											<!-- 						class="form-control" name="txtid"> -->
											<!-- 				</div> -->
											<div class="form-group">
												<label for="txtDocument_type">TIPO DOC:</label> <select
													class="form-control" name="txtDocument_type">
													<option value="" disabled selected>Elegir
														documento</option>
													<option value="DNI">DNI</option>
													<option value="CNE">CNE</option>
												</select>
											</div>
											<div class="form-group">
												<label for="txtDocument_number">N° DOC:</label> <input
													type="text" class="form-control" name="txtDocument_number"
													placeholder="Escribe numero de dccumento">
											</div>
											<div class="form-group">
												<label for="txtRole">ROLE:</label> <select
													class="form-control" name="txtRole">
													<option value="" disabled selected>Elegir el rol</option>
													<option value="A">Auxiliar</option>
													<option value="D">Director</option>
												</select>
											</div>
											<!-- 				<div class="form-group"> -->
											<!-- 					<label for="txtStatus">STATUS:</label> <input type="text" -->
											<!-- 						class="form-control" name="txtStatus" -->
											<!-- 						placeholder="Escribe tu estado"> -->
											<!-- 				</div> -->
											<div class="form-group">
												<label for="txtTurn">TURNO:</label> <select
													class="form-control" name="txtTurn">
													<option value="" disabled selected>Elegir el turno</option>
													<option value="D">Mañana</option>
													<option value="T">Tarde</option>
												</select>
											</div>
											<div class="form-group">
												<label for="txtGender">GENERO:</label> <select
													class="form-control" name="txtGender">
													<option value="" disabled selected>Elegir tu
														genero</option>
													<option value="F">Femenino</option>
													<option value="M">Masculino</option>
												</select>
											</div>
											<div class="form-group">
												<label for="txtNames">NOMBRE:</label> <input type="text"
													class="form-control" name="txtNames">
											</div>
											<div class="form-group">
												<label for="txtLast_names">APELLIDO:</label> <input
													type="text" class="form-control" name="txtLast_names">
											</div>
											<div class="form-group">
												<label for="txtBirthdate">NACIMIENTO:</label> <input
													type="date" class="form-control" name="txtBirthdate">
											</div>
											<div class="form-group">
												<label for="txtEmail">EMAIL:</label> <input type="text"
													class="form-control" name="txtEmail">
											</div>
											<div class="form-group">
												<label for="txtPhone">TELEFONO:</label> <input type="text"
													class="form-control" name="txtPhone">
											</div>
											<div class="form-group">
												<label for="txtCode_ubigeo">UBIGEO:</label> <input
													type="text" class="form-control" name="txtCode_ubigeo">
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-secondary"
													data-bs-dismiss="modal">Close</button>
												<input type="submit" class="btn btn-primary" name="accion"
													value="Guardar">
											</div>
										</form>
									</div>
								</center>
							</div>
						</div>
					</div>
				</div>


				<!-- Modal REACTIVAR estudiante -->
				<div class="modal fade" id="exampleModa2" tabindex="-1"
					aria-labelledby="exampleModalLabel" aria-hidden="true">
					<div class="modal-dialog custom-modal-dialog">

						<div class="modal-content">
							<div class="modal-header">
								<h1 class="modal-title fs-5" id="exampleModalLabel">Reactivar
									Estudiante XD</h1>
								<button type="button" class="btn-close" data-bs-dismiss="modal"
									aria-label="Close"></button>
							</div>
							<div class="modal-body">
								<form class="mb-3" action="Controlador" method="POST">
									<input class="btn btn-primary" type="submit" name="accion"
										value="ListarEliminados">
									<div class="container text-center">
										<table class="table table-bordered">
											<thead>
												<tr>
													<!-- 					<th>ID</th> -->
													<th>TIPO DOC</th>
													<th>N° DOC</th>
													<!-- 					<th>ROLE</th> -->
													<!-- 					<th>STATUS</th> -->
													<th>TURNO</th>
													<th>GENERO</th>
													<th>NOMBRE</th>
													<th>APELLIDO</th>
													<th>NACIMIENTO</th>
													<th>EMAIL</th>
													<th>TELEFONO</th>
													<th>UBIGEO</th>
													<th>ACCIONES</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="dato" items="${datos}">
													<tr>
														<%-- 						<td>${dato.getId()}</td> --%>
														<td>${dato.getDocument_type()}</td>
														<td>${dato.getDocument_number()}</td>
														<%-- 						<td>${dato.getRole()}</td> --%>
														<%-- 						<td>${dato.getStatus()}</td> --%>
														<td>${dato.getTurn()}</td>
														<td>${dato.getGender()}</td>
														<td>${dato.getNames()}</td>
														<td>${dato.getLast_names()}</td>
														<td>${dato.getBirthdate()}</td>
														<td>${dato.getEmail()}</td>
														<td>${dato.getPhone()}</td>
														<td>${dato.getCityFromUbigeo()}</td>
														<td>
															<form action="Controlador" method="POST">
																<input type="hidden" name="id" value="${dato.getId()}">

																<input class="btn btn-info" type="submit" name="accion"
																	value="Reactivar">
															</form>
														</td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
								</form>

							</div>
						</div>
					</div>
				</div>
		</div>

		</div>
		<div class="container">
			<table class="table table-bordered">
				<thead>
					<tr>
						<!-- 					<th>ID</th> -->
						<th>TIPO DOC</th>
						<th>N° DOC</th>
						<!-- 					<th>ROLE</th> -->
						<!-- 					<th>STATUS</th> -->
						<th>TURNO</th>
						<th>GENERO</th>
						<th>NOMBRE</th>
						<th>APELLIDO</th>
						<th>NACIMIENTO</th>
						<th>EMAIL</th>
						<th>TELEFONO</th>
						<th>UBIGEO</th>
						<th>ACCIONES</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="dato" items="${datos}">
						<tr>
							<%-- 						<td>${dato.getId()}</td> --%>
							<td>${dato.getDocument_type()}</td>
							<td>${dato.getDocument_number()}</td>
							<%-- 						<td>${dato.getRole()}</td> --%>
							<%-- 						<td>${dato.getStatus()}</td> --%>
							<td>${dato.getTurn()}</td>
							<td>${dato.getGender()}</td>
							<td>${dato.getNames()}</td>
							<td>${dato.getLast_names()}</td>
							<td>${dato.getBirthdate()}</td>
							<td>${dato.getEmail()}</td>
							<td>${dato.getPhone()}</td>
							<td>${dato.getCityFromUbigeo()}</td>
							<td>
								<form action="Controlador" method="POST">
									<input type="hidden" name="id" value="${dato.getId()}">

									<input class="btn btn-primary" type="submit" name="accion"
										value="Editar">

									</div>
									<input class="btn btn-danger" type="submit" name="accion"
										value="Delete">
									<!-- 									<input type="hidden" name="accion" value="Editar" /> -->
									<!-- 									<button class="delete-button" type="submit"> -->
									<!-- 										<img src="img/editarIcon.png" alt="Editar" -->
									<!-- 											style="height: 3rem;" /> -->
									<!-- 									</button>	 -->


									<!-- 									<img src="img/basurero.png" style="height: 4rem" /> -->
									<!-- 									<input type="hidden" name="accion" value="Delete" /> -->
									<!-- 									<button class="delete-button" type="submit"> -->
									<!-- 										<img src="img/basurero.png" alt="Eliminar" -->
									<!-- 											style="height: 4rem;" /> -->
									<!-- 									</button> -->
								</form>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</center>


</body>
</html>