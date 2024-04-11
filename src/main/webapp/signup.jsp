<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Signup</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
  <form action="signupAction.jsp" method="post">
  <input type="text" name="name" placeholder="Enter Name" required/>
  <input type="text" name="email" placeholder="Enter Email" required/>
  <input type="text" name="mobilenumber" name="mobilenumber" placeholder="Enter Mobil Number" required/>
  <input type="password" name="password" placeholder="Enter Password" required/>
  <input type="text" name="city" placeholder="Enter City" required/>
  <input type="text" name="postelnumber" placeholder="Enter PostelNumber" required/>
  <input type="submit" value="Signup"> 
  </form>
    
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whysign'>
  <%
  String msg = request.getParameter("msg");
  if("valid".equals(msg)){%>
	  <h2>Successfully Registered</h2>
 <%}
  %>
 <%if("invalid".equals(msg)){
	 %> 
	 <h1>Some thing Went Wrong! Try Again !</h1>
<% }%> 
  <h2>Online Shopping</h2>
    <p>The Online Shopping System is the application that allows the users to shop online without going to the shops to buy them.</p>
  </div>
</div>

</body>
</html>