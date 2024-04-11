<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
try{
	Connection con = ConnectionProvider.getcon();
	Statement st = con.createStatement();
	String s1 = "create table users(name varchar(100),email varchar(100)primary key,mobilenumber int,password varchar(100),city varchar(100),postelnumber varchar(100),address varchar(100),state varchar(100),country varchar(100))";
	System.out.println(s1);
	st.execute(s1);
	System.out.println("Table created");
	con.close();
}
catch(Exception e){
	System.out.print(e);
}
%>