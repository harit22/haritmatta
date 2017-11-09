<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >

<head>
  <meta charset="UTF-8">
  <title>Login form using HTML5 and CSS3</title>
  
  
  
      <link rel="stylesheet" href="css/style.css">

  
</head>

<body>
  <body>
<div class="container">
	<section id="content">
	<form id="form1" name="form1" method="post" action="process.jsp">
  <%
  session.setAttribute("ps",".");
    session.setAttribute("msg",".");
  %>

			<h1>Register</h1>
			<div>
				<input name="NAME" type="text" id="" size="44" />
			</div>
			<div>
			Name:
				 <input name="" type="password" id="" size="44" />
			</div>
			<div>
				<input type="submit" value="Log in" />
				
				<a href="register.jsp">Register</a>
			</div>
		</form>
		
	</section><!-- content -->
</div><!-- container -->
</body>
  
    <script src="js/index.js"></script>

</body>
</html>
