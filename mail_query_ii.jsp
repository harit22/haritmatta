<html>
<head>
 
</head>
<body>
<%
response.setContentType("text/html");  
String s1=request.getParameter("n");
String s2=request.getParameter("q");
	  session.setAttribute("n",s1);
	  session.setAttribute("q",s2);
	  
	  response.sendRedirect("mail_query.jsp");
	  %>
    
   
</body>
</html>
