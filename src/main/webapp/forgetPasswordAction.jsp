<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String email = request.getParameter("email");
String name = request.getParameter("name");
String mobilenumber = request.getParameter("mobilenumber");
String newpassword = request.getParameter("newpassword");

int check = 0;
try {
	Connection con = ConnectionProvider.getcon();
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select * from users where email='"+email+"' and name='"+name+"' and mobilenumber='"+mobilenumber+"'");
	while(rs.next()) {
		check = 1;
		st.executeUpdate("update users set password='"+newpassword+"' where email='"+email+"'");
		response.sendRedirect("forgotPassword.jsp?msg=done");
	}
	if(check==0) {
		response.sendRedirect("forgotPassword.jsp?msg=invalid");
	}
	
}
catch(Exception e) {
	out.println(e);
}
%>