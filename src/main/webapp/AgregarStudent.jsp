<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<!-- codigo para poner logo en pestaña de navegador -->
<link rel="icon" type="image/png" sizes="100x100"
	href="img\Insignia SRC.png">

<title>Agregar Student</title>
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

.red-border {
	border-color: red !important;
}

.green-border {
	border-color: green !important;
}

.border-thick {
	border-width: 3px !important;
}

.select-notice {
	color: red;
	font-size: 12px;
	margin-top: 5px;
}

.input-notice {
	font-size: 12px;
	color: red;
	margin-top: 5px;
	display: none;
}

.input-notice {
	font-size: 12px;
	color: red;
	margin-top: 5px;
	display: none;
}

.input-notice {
	font-size: 12px;
	color: red;
	margin-top: 5px;
	display: none;
}

.border-thick {
	border-width: 3px !important;
	border-color: green !important;
}

.input-notice {
	color: red;
	margin-top: 5px;
	font-size: 12px;
}

@
keyframes move { 0% {
	transform: translateX(0);
}

50
%
{
transform
:
translateX(
-20px
);
}
100
%
{
transform
:
translateX(
0
);
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
							href="#" class="nav-link text-white text-center"> <span
								class="fs-4 ms-3 d-none d-sm-inline">ACTUALIZAR MIS DATOS</span>
						</a></li>
						<li class="nav-item py-2 py-sm-0 align-items-center"><a
							href="#" class="nav-link text-white text-center"> <span
								class="fs-4 ms-3 d-none d-sm-inline">REGISTRAR ASISTENCIA</span>
						</a></li>
						<li class="nav-item py-2 py-sm-0 align-items-center"><a
							href="AgregarStudent.jsp"
							class="nav-link text-white text-center active"> <span
								class="fs-4 ms-3 d-none d-sm-inline">AGREGAR ESTUDIANTE</span>
						</a></li>
						<li class="nav-item py-2 py-sm-0 align-items-center"><a
							href="AgregarPerson.jsp" class="nav-link text-white text-center">
								<span class="fs-4 ms-3 d-none d-sm-inline">AGREGAR PERSON</span>
						</a></li>
						<li class="nav-item py-2 py-sm-0"><a
							href="ActualizarEstudiante.jsp"
							class="nav-link text-white text-center"> <span
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
												<img src="img\Icono_Estudiante.png" alt="Logo CASSIATEC"
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
					<div
						class="container bg-white my-5 rounded-5 text-secondary shadow custom-padding"
						style="width: 70rem">
						<div class="card-body">
							<form action="Controlador2" method="POST">
								<!-- 				<div class="form-group"> -->
								<!-- 					<label for="txtid">ID:</label> <input type="text" -->
								<!-- 						class="form-control" name="txtid"> -->
								<!-- 				</div> -->
								<div class="row">
									<div class="container">
										<h3 class="text-center">AGREGAR Estudiante</h3>
									</div>
									<div
										class="col-lg-6 mb-3 text-center d-flex justify-content-center">
										<img src="img/Icono_Estudiante.png" alt="Usuario" width="100"
											height="100" class="align-self-center">
									</div>
									<div class="col-lg-6">
										<div class="mb-3">
											<label for="txtDocument_type">TIPO DOC:</label> <select
												class="form-control" name="txtDocument_type"
												id="txtDocument_type">
												<option value="" disabled selected>Elegir documento</option>
												<option value="DNI">DNI</option>
												<option value="CNE">CNE</option>
											</select>
											<div id="selectNotice" class="select-notice"></div>
										</div>
										<script>
    // Obtener el elemento select y el elemento de aviso
    var select = document.getElementById("txtDocument_type");
    var selectNotice = document.getElementById("selectNotice");

    // Agregar un listener al evento focus del select
    select.addEventListener("focus", function() {
        // Mostrar el aviso cuando se enfoca en el select
        selectNotice.textContent = "ALERTA: Solo puedes elegir un tipo de documento DNI 8 digitos y CNE 15 digitos";
    });

    // Agregar un listener al evento blur del select
    select.addEventListener("blur", function() {
        // Ocultar el aviso cuando se pierde el enfoque del select
        selectNotice.textContent = "";
    });
</script>

										<script>
    document.addEventListener('DOMContentLoaded', function() {
        const selectElement = document.getElementById('txtDocument_type');
        selectElement.addEventListener('change', function() {
            if (this.value !== "") {
                this.classList.add('border-thick');
            } else {
                this.classList.remove('border-thick');
            }
        });
    });
</script>

										<div class="mb-3">
											<label for="txtDocument_number">N° DOC:</label> <input
												type="text" class="form-control" name="txtDocument_number"
												id="txtDocument_number"
												placeholder="Escribe número de documento"
												oninput="this.value = this.value.replace(/[^0-9]/g, '')">
											<div id="documentNumberNotice" class="input-notice"></div>
										</div>
										<script>
    // Obtener el elemento input y el elemento de aviso
    var input = document.getElementById("txtDocument_number");
    var documentNumberNotice = document.getElementById("documentNumberNotice");

    // Agregar un listener al evento focus del input
    input.addEventListener("focus", function() {
        // Mostrar el aviso al costado del input cuando se enfoca en él
        documentNumberNotice.style.display = "block";
        documentNumberNotice.textContent = "ALERTA: Solo colocar numeros segun el tipo de documento";
    });

    // Agregar un listener al evento blur del input
    input.addEventListener("blur", function() {
        // Ocultar el aviso cuando se pierde el enfoque del input
        documentNumberNotice.style.display = "none";
        documentNumberNotice.textContent = "";
    });
</script>

										<script>
    document.addEventListener('DOMContentLoaded', function() {
        const selectElement = document.getElementById('txtDocument_number');
        selectElement.addEventListener('change', function() {
            if (this.value !== "") {
                this.classList.add('border-thick');
            } else {
                this.classList.remove('border-thick');
            }
        });
    });
</script>

										<script>
  document.addEventListener('DOMContentLoaded', function() {
    const selectElement = document.querySelector('select[name="txtDocument_type"]');
    const documentNumberInput = document.querySelector('input[name="txtDocument_number"]');
    
    selectElement.addEventListener('change', function() {
      const selectedOption = this.value;
      if (selectedOption === 'DNI') {
        documentNumberInput.maxLength = 8;
      } else if (selectedOption === 'CNE') {
        documentNumberInput.maxLength = 15;
      }
    });
  });
</script>

									</div>
								</div>

								<!-- 									<div class="col-6 mb-3"> -->
								<!-- 										<div class="form-group"> -->
								<!-- 											<label for="txtRole">ROLE:</label> <select -->
								<!-- 												class="form-control" name="txtRole"> -->
								<!-- 												<option value="" disabled selected>Elegir el rol</option> -->
								<!-- 												<option value="A">Auxiliar</option> -->
								<!-- 												<option value="D">Director</option> -->
								<!-- 											</select> -->
								<!-- 										</div> -->
								<!-- 									</div> -->





								<!-- 				<div class="form-group"> -->
								<!-- 					<label for="txtStatus">STATUS:</label> <input type="text" -->
								<!-- 						class="form-control" name="txtStatus" -->
								<!-- 						placeholder="Escribe tu estado"> -->
								<!-- 				</div> -->
								<div class="row">

									<div class="col-4 mb-3">
										<div class="form-group">
											<label for="txtGrade">Grado:</label> <select
												class="form-control" name="txtGrade" id="txtGrade">
												<option value="" disabled selected>Elegir el grado</option>
												<option value="1">1 SECUNDARIA</option>
												<option value="2">2 SECUNDARIA</option>
												<option value="3">3 SECUNDARIA</option>
												<option value="4">4 SECUNDARIA</option>
												<option value="5">5 SECUNDARIA</option>
											</select>
											<div id="gradeNotice" class="input-notice"></div>
										</div>
										<script>
    // Obtener el elemento select y el elemento de aviso
    var select = document.getElementById("txtGrade");
    var gradeNotice = document.getElementById("gradeNotice");

    // Agregar un listener al evento focus del select
    select.addEventListener("focus", function() {
        // Mostrar el aviso al costado del select cuando se enfoca en él
        gradeNotice.style.display = "block";
        gradeNotice.textContent = "ALERTA: Selecciona el grado deseado";
    });

    // Agregar un listener al evento blur del select
    select.addEventListener("blur", function() {
        // Ocultar el aviso cuando se pierde el enfoque del select
        gradeNotice.style.display = "none";
        gradeNotice.textContent = "";
    });
</script>

										<script>
  document.addEventListener('DOMContentLoaded', function() {
    const selectElement = document.querySelector('select[name="txtGrade"]');
    selectElement.addEventListener('change', function() {
      if (this.value >= 1 && this.value <= 5) {
        this.classList.add('border-success', 'border-thick');
      } else {
        this.classList.remove('border-success', 'border-thick');
      }
    });
  });
</script>

									</div>

									<div class="col-4 mb-3">
										<div class="form-group">
											<label for="txtSection">Sección:</label> <select
												class="form-control" name="txtSection" id="txtSection">
												<option value="" disabled selected>Elegir la
													sección</option>
												<option value="A">Sección A</option>
												<option value="B">Sección B</option>
												<option value="C">Sección C</option>
												<option value="D">Sección D</option>
												<option value="E">Sección E</option>
												<option value="F">Sección F</option>
											</select>
											<div id="sectionNotice" class="input-notice"></div>
										</div>
										<script>
    // Obtener el elemento select y el elemento de aviso
    var select = document.getElementById("txtSection");
    var sectionNotice = document.getElementById("sectionNotice");

    // Agregar un listener al evento focus del select
    select.addEventListener("focus", function() {
        // Mostrar el aviso al costado del select cuando se enfoca en él
        sectionNotice.style.display = "block";
        sectionNotice.textContent = "ALERTA: Selecciona la seccion deseada";
    });

    // Agregar un listener al evento blur del select
    select.addEventListener("blur", function() {
        // Ocultar el aviso cuando se pierde el enfoque del select
        sectionNotice.style.display = "none";
        sectionNotice.textContent = "";
    });
</script>


										<script>
    document.addEventListener('DOMContentLoaded', function() {
        const selectElement = document.getElementById('txtSection');
        selectElement.addEventListener('change', function() {
            if (this.value !== "") {
                this.classList.add('border-thick');
            } else {
                this.classList.remove('border-thick');
            }
        });
    });
</script>

									</div>

									<div class="col-4 mb-3">
										<div class="form-group">
											<label for="txtTurn">TURNO:</label> <select
												class="form-control" name="txtTurn" id="txtTurn">
												<option value="" disabled selected>Elegir el turno</option>
												<option value="DIA">Dia</option>
												<option value="TARDE">Tarde</option>
											</select>
											<div id="turnNotice" class="input-notice"></div>
										</div>
										<script>
    // Obtener el elemento select y el elemento de aviso
    var select = document.getElementById("txtTurn");
    var turnNotice = document.getElementById("turnNotice");

    // Agregar un listener al evento focus del select
    select.addEventListener("focus", function() {
        // Mostrar el aviso al costado del select cuando se enfoca en él
        turnNotice.style.display = "block";
        turnNotice.textContent = "ALERTA: Selecciona el turno adecuado";
    });

    // Agregar un listener al evento blur del select
    select.addEventListener("blur", function() {
        // Ocultar el aviso cuando se pierde el enfoque del select
        turnNotice.style.display = "none";
        turnNotice.textContent = "";
    });
</script>

										<script>
    document.addEventListener('DOMContentLoaded', function() {
        const selectElement = document.getElementById('txtTurn');
        selectElement.addEventListener('change', function() {
            if (this.value !== "") {
                this.classList.add('border-thick');
            } else {
                this.classList.remove('border-thick');
            }
        });
    });
</script>

									</div>

								</div>


								<div class="row">
									<div class="col-6 mb-3">
										<div class="form-group">
											<label for="txtNames">NOMBRE:</label> <input type="text"
												class="form-control" name="txtNames" id="txtNames">
											<div id="namesNotice" class="input-notice"></div>
										</div>

										<script>
    // Obtener el elemento input y el elemento de aviso
    var input = document.getElementById("txtNames");
    var namesNotice = document.getElementById("namesNotice");

    // Agregar un listener al evento focus del input
    input.addEventListener("focus", function() {
        // Mostrar el aviso al costado del input cuando se enfoca en él
        namesNotice.style.display = "block";
        namesNotice.textContent = "ALERTA: Solo puedes colocar letras";
    });

    // Agregar un listener al evento blur del input
    input.addEventListener("blur", function() {
        // Ocultar el aviso cuando se pierde el enfoque del input
        namesNotice.style.display = "none";
        namesNotice.textContent = "";
    });
</script>

										<script>
  document.addEventListener('DOMContentLoaded', function() {
    const inputElement = document.querySelector('input[name="txtNames"]');
    inputElement.addEventListener('keydown', function(event) {
      const inputValue = this.value.trim();
      const charCode = event.which || event.keyCode;
      const char = String.fromCharCode(charCode);
      const regex = /^[a-zA-ZñÑáéíóúÁÉÍÓÚ\s]+$/; // Expresión regular para aceptar solo letras del alfabeto español latino y espacios

      if (inputValue.length >= 2 && regex.test(char)) {
        this.classList.add('border-success');
        this.style.borderWidth = '3px'; // Ajustar el grosor del borde a 2px
      } else {
        this.classList.remove('border-success');
        this.style.borderWidth = ''; // Restablecer el grosor del borde a su valor predeterminado
      }

      if (charCode === 8 && inputValue.length === 1) {
        this.classList.remove('border-success');
        this.style.borderWidth = ''; // Restablecer el grosor del borde a su valor predeterminado
      }

      if (!regex.test(char) && charCode !== 8) {
        event.preventDefault();
      }
    });
  });
</script>



									</div>

									<div class="col-6 mb-3">
										<div class="form-group">
											<label for="txtLast_names">APELLIDO:</label> <input
												type="text" class="form-control" name="txtLast_names"
												id="txtLast_names">
											<div id="lastNamesNotice" class="input-notice"></div>
										</div>
										<script>
    document.addEventListener('DOMContentLoaded', function() {
        const inputElement = document.querySelector('input[name="txtLast_names"]');
        const noticeElement = document.createElement('div');
        noticeElement.classList.add('input-notice');
        inputElement.parentNode.appendChild(noticeElement);

        inputElement.addEventListener('focus', function() {
            noticeElement.style.display = 'block';
            noticeElement.textContent = 'ALERTA: Solo puedes colocar letras';
        });

        inputElement.addEventListener('blur', function() {
            noticeElement.style.display = 'none';
            noticeElement.textContent = '';
        });

        inputElement.addEventListener('keydown', function(event) {
            const inputValue = this.value.trim();
            const charCode = event.which || event.keyCode;
            const char = String.fromCharCode(charCode);
            const regex = /^[a-zA-ZñÑáéíóúÁÉÍÓÚ\s]+$/; // Expresión regular para aceptar solo letras del alfabeto español latino y espacios

            if (inputValue.length >= 3 && regex.test(char)) {
                this.classList.add('border-success');
                this.style.borderWidth = '3px'; // Ajustar el grosor del borde a 3px
            } else {
                this.classList.remove('border-success');
                this.style.borderWidth = ''; // Restablecer el grosor del borde a su valor predeterminado
            }

            if (charCode === 8 && inputValue.length === 1) {
                this.classList.remove('border-success');
                this.style.borderWidth = ''; // Restablecer el grosor del borde a su valor predeterminado
            }

            if (!regex.test(char) && charCode !== 8) {
                event.preventDefault();
            }
        });
    });
</script>

									</div>
								</div>


								<div class="row">

									<div class="col-6 mb-3">
										<div class="form-group">
											<label for="txtPhone">TELEFONO del apoderado:</label> <input
												type="text" class="form-control" name="txtPhone"
												maxlength="9" pattern="[0-9]*"
												oninput="this.value = this.value.replace(/[^0-9]/g, ''); updateBorderColor(this);"
												onfocus="showNotice(this);" onblur="hideNotice(this);">
											<div class="input-notice" id="phoneNotice"></div>
										</div>
									</div>
									<script>
    function updateBorderColor(element) {
        if (element.value.length < 9) {
            element.style.borderWidth = '3px'; // Ajustar el grosor del borde a 3px
            element.classList.add('red-border');
            element.classList.remove('green-border');
        } else {
            element.style.borderWidth = '3px'; // Ajustar el grosor del borde a 3px
            element.classList.add('green-border');
            element.classList.remove('red-border');
        }
    }
</script>

									<script>
    function showNotice(element) {
        const noticeElement = document.getElementById('phoneNotice');
        noticeElement.style.display = 'block';
        noticeElement.textContent = 'ALERTA: Ingresa un número de teléfono válido';
    }

    function hideNotice(element) {
        const noticeElement = document.getElementById('phoneNotice');
        noticeElement.style.display = 'none';
        noticeElement.textContent = '';
    }
</script>

									<div class="col-6 mb-3">
										<div class="form-group">
											<label for="txtEmail">EMAIL:</label> <input type="text"
												class="form-control" name="txtEmail">
											<div id="emailNotice" class="input-notice"></div>
										</div>

										<script>
  const inputElement = document.querySelector('input[name="txtEmail"]');
  const noticeElement = document.getElementById('emailNotice');

  inputElement.addEventListener('focus', function() {
    this.style.borderWidth = '3px';
    this.style.borderColor = 'green';
    noticeElement.textContent = 'ALERTA: Solo puedes colocar emails válidos';
    noticeElement.style.display = 'block';
  });

  inputElement.addEventListener('blur', function() {
    const email = this.value.trim();
    if (!isValidEmail(email)) {
      this.style.borderWidth = '';
      this.style.borderColor = '';
    }
    noticeElement.textContent = '';
    noticeElement.style.display = 'none';
  });

  function isValidEmail(email) {
    return /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email);
  }
</script>
									</div>
								</div>



								<div class="row">
									<div class="col-3 mb-3">
										<label for="txtBirthdate">NACIMIENTO:</label> <input
											type="date" class="form-control" name="txtBirthdate"
											id="txtBirthdate">
										<div class="input-notice" id="birthdateNotice"></div>
									</div>
									<script>
    // Obtener el elemento select y el elemento de aviso
    var select = document.getElementById("txtBirthdate");
    var birthdateNotice = document.getElementById("birthdateNotice");

    // Agregar un listener al evento focus del select
    select.addEventListener("focus", function() {
        // Mostrar el aviso al costado del select cuando se enfoca en él
        birthdateNotice.style.display = "block";
        birthdateNotice.textContent = "ALERTA: Selecciona su fecha de nacimiento";
    });

    // Agregar un listener al evento blur del select
    select.addEventListener("blur", function() {
        // Ocultar el aviso cuando se pierde el enfoque del select
        birthdateNotice.style.display = "none";
        birthdateNotice.textContent = "";
    });
</script>



									<script>
    document.addEventListener('DOMContentLoaded', function() {
        const selectElement = document.getElementById('txtBirthdate');
        selectElement.addEventListener('change', function() {
            if (this.value !== "") {
                this.classList.add('border-thick');
            } else {
                this.classList.remove('border-thick');
            }
        });
    });
</script>




									<div class="col-6 mb-3">
										<div class="form-group">
											<label for="txtCode_ubigeo">UBIGEO:</label> <select
												class="form-control" name="txtCode_ubigeo"
												id="txtCode_ubigeo">
												<option value="">Elija su ubigeo según su DNI</option>
												<option value="010101">AMAZONAS, CHACHAPOYAS,
													CHACHAPOYAS</option>
												<option value="010102">AMAZONAS, CHACHAPOYAS,
													ASUNCION</option>
												<option value="010103">AMAZONAS, CHACHAPOYAS,
													BALSAS</option>
												<option value="010104">AMAZONAS, CHACHAPOYAS, CHETO</option>
												<option value="010105">AMAZONAS, CHACHAPOYAS,
													CHILIQUIN</option>
												<option value="010106">AMAZONAS, CHACHAPOYAS,
													CHUQUIBAMBA</option>
											</select>
											<div id="ubigeoNotice" class="input-notice"></div>
										</div>
										<script>
    document.addEventListener('DOMContentLoaded', function() {
        const selectElement = document.getElementById('txtCode_ubigeo');
        selectElement.addEventListener('change', function() {
            if (this.value !== "") {
                this.classList.add('border-thick');
            } else {
                this.classList.remove('border-thick');
            }
        });
    });
</script>

										<script>
    // Obtener el elemento select y el elemento de aviso
    var select = document.getElementById("txtCode_ubigeo");
    var ubigeoNotice = document.getElementById("ubigeoNotice");

    // Agregar un listener al evento focus del select
    select.addEventListener("focus", function() {
        // Mostrar el aviso al costado del select cuando se enfoca en él
        ubigeoNotice.style.display = "block";
        ubigeoNotice.textContent = "ALERTA: Selecciona el ubigeo adecuado";
    });

    // Agregar un listener al evento blur del select
    select.addEventListener("blur", function() {
        // Ocultar el aviso cuando se pierde el enfoque del select
        ubigeoNotice.style.display = "none";
        ubigeoNotice.textContent = "";
    });
</script>

									</div>
								</div>



								<div class="text-center">
									<input type="submit" class="btn btn-success w-50" name="accion"
										value="Guardar">
								</div>


							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="https://kit.fontawesome.com/3d22aaea26.js"
		crossorigin="anonymous"></script>

	<%-- Mostrar modal si hay un mensaje de resultado --%>
	<%
	if (request.getAttribute("mensajeResultado") != null
			&& !request.getAttribute("mensajeResultado").toString().isEmpty()) {
	%>
	<div id="resultadoModal" class="modal">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title">Resultado del Proceso</h5>
				<button type="button" class="close" data-bs-dismiss="modal"
					aria-label="Cerrar">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<%-- Mostrar el mensaje de resultado --%>
				<p>${mensajeResultado}</p>
			</div>
		</div>
	</div>

	<script>
		document.addEventListener('DOMContentLoaded', function() {
			var modal = document.getElementById('resultadoModal');
			var mensajeResultado = "${mensajeResultado}";

			// Mostrar el modal correspondiente
			if (mensajeResultado) {
				if (mensajeResultado.includes("exito")) {
					// Proceso exitoso
					modal.classList.add('modal-success');
				} else {
					// Proceso rechazado
					modal.classList.add('modal-error');
				}

				modal.style.display = 'block';
			}

			// Cerrar el modal al hacer clic en el botón "Cerrar"
			var closeButton = modal.querySelector('.close');
			closeButton.addEventListener('click', function() {
				modal.style.display = 'none';
			});
		});
	</script>

	<style>
/* Estilos del modal */
.modal {
	display: none;
	position: fixed;
	z-index: 1;
	padding-top: 100px;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	overflow: auto;
	background-color: rgba(0, 0, 0, 0.4);
}

.modal-content {
	background-color: #fefefe;
	margin: auto;
	padding: 20px;
	border: 1px solid #888;
	width: 80%;
	max-width: 600px;
	border-radius: 5px;
}

.modal-header {
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding-bottom: 10px;
}

.modal-title {
	margin: 0;
}

.close {
	background: none;
	border: none;
	cursor: pointer;
}

.close:hover {
	color: red;
}

.modal-body {
	padding-bottom: 10px;
}

/* Estilos para resultado exitoso */
.modal-success {
	border-color: green;
}

.modal-success .modal-title {
	color: green;
}

/* Estilos para resultado rechazado */
.modal-error {
	border-color: red;
}

.modal-error .modal-title {
	color: red;
}
</style>
	<%
	}
	%>
	<script type="js/validaciones.js"></script>
</body>
</html>