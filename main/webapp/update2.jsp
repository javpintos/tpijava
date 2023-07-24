<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update test</title>
</head>
<body>
	<h1>Datos de usuario</h1>
	Nombre: <%= request.getParameter("Nombre") %><br>
	Apellido: <%= request.getParameter("Apellido") %>
	Email: <%= request.getParameter("Email") %>
	Cantidad: <%= request.getParameter("Cantidad") %>
	Categoria: <%= request.getParameter("Categoria") %>
</body>
</html>