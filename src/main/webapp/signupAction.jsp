<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String name = request.getParameter("name");
String email = request.getParameter("email");
String mobilenumber = request.getParameter("mobilenumber");
String password = request.getParameter("password");
String city = request.getParameter("city");
String postelnumber = request.getParameter("postelnumber");
String address = "";
String state = ""; 
String country = "";
try {
	Connection con = ConnectionProvider.getcon();
	PreparedStatement ps = con.prepareStatement("insert into users values(?,?,?,?,?,?,?,?,?)");
	ps.setString(1, name);
	ps.setString(2, email);
	ps.setString(3, mobilenumber);
	ps.setString(4, password);
	ps.setString(5, city);
	ps.setString(6, postelnumber);
	ps.setString(7, address);
	ps.setString(8, state);
	ps.setString(9, country);
	ps.executeUpdate();
	response.sendRedirect("signup.jsp?msg=valid");	
}
catch(Exception e){
	out.println(e);
	response.sendRedirect("signup.jsp?msg=invalid");
}
%>