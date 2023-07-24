<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update ticket</title>
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
	try{
		Connection cn = DriverManager.getConnection(URL, USER, PASS);
		Statement stm = cn.createStatement();
		int valor = 1;
		ResultSet rsId = stm.executeQuery("SELECT MAX(id) FROM ticket");
		while(rsId.next()){
			int eid = rsId.getInt(1);
			String consulta = "UPDATE ticket SET nombre='"+ nombre + "',apellido='" + apellido +
					"',mail='"+ mail +"',cantidad='"+ cantidad +"', categoria='" + categoria +
					"' WHERE id = "+ eid +"";

			stm.executeUpdate(consulta);
		}
	}catch(Exception e){
		out.print("Error al modificar los datos");
	}
	String redirectURL = "index.html";
    response.sendRedirect(redirectURL);
	%>
<!--<jsp:include page="index.html"></jsp:include>-->
</body>
</html>