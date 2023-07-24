<%@ page import = "java.sql.*" %>
<%@ page import = "javax.swing.JOptionPane" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Carga de tickets en BD</title>
</head>
<body>
	<% 
	String nombre = request.getParameter("Nombre");
	String apellido = request.getParameter("Apellido");
	String mail = request.getParameter("Email");
	String cantidad = request.getParameter("Cantidad");
	String categoria = request.getParameter("Categoria");
	
	String URL = "jdbc:mysql://localhost:3306/compraTicket";
	String USER = "root";
	String PASS = "admin";
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	try {
		Connection cn = DriverManager.getConnection(URL, USER, PASS);
		Statement stm = cn.createStatement();
		stm.executeUpdate("INSERT INTO ticket(nombre,apellido,mail,cantidad,categoria) VALUES ('"+nombre+"','"+apellido+"','"+mail+"','"+cantidad+"','"+categoria+"')");
	} catch (SQLException e) {
		out.print("Error al cargar la transacción en la BD");
	}
	%>
<jsp:include page="ticket.jsp"></jsp:include>
</body>
</html>