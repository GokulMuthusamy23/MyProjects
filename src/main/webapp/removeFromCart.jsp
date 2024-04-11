<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String email=session.getAttribute("email").toString();
String id=request.getParameter("id");
try{
	Connection con = ConnectionProvider.getcon();
	Statement st = con.createStatement();
	st.executeUpdate("delete from cart where email='"+email+"' and product_id='"+id+"' and address is NULL");
	response.sendRedirect("myCart.jsp?msg=remove");	
}
catch(Exception e){
	
out.println(e);
}



%>