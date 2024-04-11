<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>ForgotPassword</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
     <form action="forgetPasswordAction.jsp" method="post">
        <input type="email" name="email" placeholder="Enter Email" required/>
        <input type="text" name="name" placeholder="Enter Your Name" required/>
        <input type="number" name="mobilenumber" placeholder="Enter MobileNumber" required/>
        <input type="password" name="newpassword" placeholder="Enter your New Password to Set" required/>
        <input type="submit" value="Save"/>
     </form>
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whyforgotPassword'>
  <%
  String msg = request.getParameter("msg");
  if("done".equals(msg)){
	  %>
	  <h1>Password Changed Successfully!</h1>
 <% }
  %>
  <%
  if("invalid".equals(msg)){
	  %>
	  <h1>Password Changed Successfully!</h1>
 <% }
  %>
  <h2>Online Shopping</h2>
    <p>The Online Shopping System is the application that allows the users to shop online without going to the shops to buy them.</p>
  </div>
</div>
</body>
</html>