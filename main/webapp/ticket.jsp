<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/bootstrap.min.css">
    <link rel="stylesheet" href="./css/style.css">
    <script src="https://kit.fontawesome.com/628afeffd4.js" crossorigin="anonymous"></script>
    <title>Bs As Conf</title>
</head>

<body>

    <!-- Header -->
    <header>
        <nav class="navbar navbar-expand-lg bg-secondary fixed-top">
            <div class="container-fluid .bg-secondary">
                <a class="navbar-brand" href="#">
                    <img src="./assets/img/codoacodo.png" alt="Logo" width="100"
                        class="d-inline-block align-text-center">
                            Conf Bs As 
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse flex-row-reverse" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" disabled>La conferencia</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" disabled>Los oradores</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" disabled>El lugar y la fecha</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" disabled>Conviértete en orador</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-success green-text" disabled>Comprar tickets</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>

    <!-- Form ticket -->
    <div id="tickets" class="tickets">
        <div class="container-tickets">
        <br>
        <div id="ventaTickets"><br><h1></h1><h2>RESUMEN DE LA COMPRA</h2></div>
            <div class="tickets-category">
                <div class="estudiante">
                    <h3>Estudiante</h3>
                    <h5>Tienen un descuento</h5>
                    <h2>80%</h2>
                    <h6>* presentar documentación</h6>
                </div>
                <div class="trainee">
                    <h3>Trainee</h3>
                    <h5>Tienen un descuento</h5>
                    <h2>50%</h2>
                    <h6>* presentar documentación</h6>
                </div>
                <div class="junior">
                    <h3>Junior</h3>
                    <h5>Tienen un descuento</h5>
                    <h2>15%</h2>
                    <h6>* presentar documentación</h6>
                </div>
            </div>
            <div class="tickets-text">
                <h2>VALOR DE TICKET $200</h2>
            </div>
            <form class="ticketsForm" action="update.jsp">
                <div class="tickets-form">
                    <input type="text" class="ticketsFirstName" name="Nombre" value="<%= request.getParameter("Nombre") %>" placeholder="Nombre" id="Nombre">
                    <input type="text" class="ticketsLastName" name="Apellido" value="<%= request.getParameter("Apellido") %>" placeholder="Apellido" id="Apellido">
                    <input type="email" class="ticketsEmail" name="Email" value="<%= request.getParameter("Email") %>" placeholder="Correo" id="Email">
                    <div class="labelTicketsQuantity">
                        <label for="Cantidad">Cantidad</label>
                        <input id="ticketsQuantity" type="number" min="1" max="10" class="ticketsQuantity" name="Cantidad" value="<%= request.getParameter("Cantidad") %>"
                            placeholder="Cantidad">
                    </div>
                    <div class="labelTicketsCategory">
                        <label for="Categoria">Categoría</label>
                        <select name="Categoria" class="ticketsCategory" id="Categoria">
                        	<option selected=""><%= request.getParameter("Categoria") %></option>
                            <option value="Estudiante">Estudiante</option>
                            <option value="Trainee">Trainee</option>
                            <option value="Junior">Junior</option>
                        </select>
                    </div>
                    <!-- <output class="ticketsOutput"><span class="ticketsValue">Total a pagar: </span><span class="ticketsBuy"><i class="fa-solid fa-cart-shopping"></i> Comprar</span></output> -->
                    <output class="ticketsOutput"><span class="ticketsValue">Total a pagar: </span></output>
                    <br>
                    <div class="container-fluid">
                    <br>
	                    <div class="row">
	                    	<div class="d-grid col-4 mx-auto">
	                    		<button id="btnCancel" type="button" class="btn btn-success" onclick="location.href='delete.jsp'">Cancelar</button>
	                    	</div>
	                    	<div class="d-grid col-4 mx-auto">
	                    		<button id="btnUpdate" type="submit" class="btn btn-success">Modificar</button>
	                    	</div>
	                    	<div class="d-grid col-4 mx-auto">
	                    		<button id="btnConfirm" type="button" class="btn btn-success" onclick="location.href='index.html'">Confirmar</button>
	                    	</div>
	                    </div>
	                </div>
	                <br>
                </div>
                <br>
            </form>
        </div>
    </div>
    
    <!-- Footer -->
    <footer>
        <nav class="navbar navbar-expand-lg bg-secondary mt-3">
            <div class="container-fluid .bg-secondary">
                <ul class="nav justify-content-center mx-auto">
                    <li class="nav-item text-white">
                      <a class="nav-link texto-blanco" href="#" disabled>Preguntas frecuentes</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link  texto-blanco" href="#" disabled>Contáctanos</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link texto-blanco" href="#" disabled>Prensa</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link texto-blanco" href="#" disabled>Conferencias</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link texto-blanco" href="#" disabled>Términos y condiciones</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link texto-blanco" href="#" disabled>Privacidad</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link texto-blanco" href="#" disabled>Estudiantes</a>
                      </li>
                  </ul>
            </div>
        </nav>
    </footer>
    
    <script src="./js/main.js"></script>
    <script src="./js/bootstrap.bundle.min.js"></script>
</body>

</html>