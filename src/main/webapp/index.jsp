<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<link rel="icon" type="image/x-icon" href="/assets/logo-vt.svg" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<!-- codigo para poner logo en pestaña de navegador -->
<link rel="icon" type="image/png" sizes="100x100" href="img\Insignia SRC.png">

<title>Login SRC</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
	crossorigin="anonymous" />
<style>
.custom-bg {
	background-image: url("img/Entrada_SRC.jpg");
	background-size: cover;
	background-position: center;
}

:root { -
	-white: rgb(255, 0, 0); -
	-light-grey: rgb(0, 0, 0); -
	-beaver: rgb(255, 0, 0); -
	-black: rgb(0, 4, 255); -
	-eerie-black: rgb(31, 31, 31); -
	-jet: rgb(0, 208, 255);
}

/* CARGA DE LA PAGINA */
.container--loader {
	background-color: var(- -eerie-black);
	position: fixed;
	width: 100vw;
	height: 100vh;
	z-index: 9999;
	transition: all 2.5s;
	display: flex;
	align-items: center;
	justify-content: center;
}

.loader, .loader:before, .loader:after {
	border-radius: 50%;
	width: 2rem;
	height: 2rem;
	animation: loader 2.5s infinite ease-in-out;
}

.loader {
	color: var(- -beaver);
	font-size: 13px;
	position: relative;
	animation-delay: -50.16s;
	////////////0
}

.loader:before, .loader:after {
	content: '';
	position: absolute;
	top: 0;
}

.loader:before {
	left: -3.5rem;
	animation-delay: -50.32s;
	///////////0
}

.loader:after {
	left: 3.5rem;
}

@
keyframes loader { 0%, 80%, 100% {
	box-shadow: 0 2.5rem 0 -1.3rem;
}
40


%
{
box-shadow


:


0


2
.5rem


0


0
;


}
}
</style>
</head>
<body
	class="custom-bg d-flex justify-content-center align-items-center vh-100">

	<!-- START Loader -->
	<div class="container--loader">
		<div class="loader"></div>
	</div>
	<!-- END Loader -->

	<div class="bg-white p-5 rounded-5 text-secondary shadow"
		style="width: 25rem">
		<div class="d-flex justify-content-center">
			<img src="img\Insignia SRC.png" alt="login-icon" style="height: 7rem" />
		</div>
		<div class="text-black text-center fs-1 fw-bold">SRC</div>
		<div class="input-group mt-4">
			<div class="input-group-text bg-danger">
				<img src="img/username-icon.svg" alt="username-icon"
					style="height: 1rem" />
			</div>
			<input class="form-control bg-light" type="text" placeholder="DNI" />
		</div>
		<div class="input-group mt-1">
			<div class="input-group-text bg-danger">
				<img src="img/password-icon.svg" alt="password-icon"
					style="height: 1rem" />
			</div>
			<input class="form-control bg-light" type="password"
				placeholder="Password" />
		</div>
		<div class="d-flex justify-content-around mt-1">
			<div class="pt-1">
				<a href="ContactAdmin.jsp"
					class="text-decoration-none text-danger fw-semibold fst-italic"
					style="font-size: 0.9rem">Forgot your password?</a>
			</div>
		</div>

		<!-- Solo es una prueba de enlace cuando se ingrese al sistema -->
		<button type="button"
			class="btn btn-danger w-100 mt-4 fw-semibold shadow-sm"
			onclick="Ingresar()">Login</button>

		<script>
  function Ingresar() {
    // Redireccionar a la página "inicioPerson.jsp"
    window.location.href = "HOME.jsp";
  }
</script>
	</div>

	<script>
/* ===== Loader =====*/
window.addEventListener('load', () => {
    const contenedorLoader = document.querySelector('.container--loader');
    contenedorLoader.style.opacity = 0;
    contenedorLoader.style.visibility = 'hidden';
});
</script>

</body>
</html>