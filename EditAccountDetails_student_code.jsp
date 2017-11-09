<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>
<%@ include file="conn.jsp"%>
<body>
						 
<%

String a=session.getAttribute("un").toString();

String b=request.getParameter("t2");
String c=request.getParameter("t3");
String d=request.getParameter("t4");

String e=request.getParameter("t5");
String f=request.getParameter("t6");


try
{

String query="update  student set password='"+b+"' , name='"+c+"' , emailid='"+d+"', mobile='"+e+"', addrs='"+f+"' where studentid='"+a+"'";

int in=st.executeUpdate(query);
if(in==1)
{
response.sendRedirect("student.jsp");
}
}
catch(Exception ee)
{
out.print(ee);
}

%>
</body>
</html>
