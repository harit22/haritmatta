<%@ page import="java.sql.*"%>
<%@ page import="java.util.date.*,java.util.text.DateFormat.*,java.text.ParseException.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>
<%@ page  import="java.sql.*" %>
<%@ page  import="java.util.*"%>
<%@ include file="conn.jsp"%>
<%@ page language="java" import="java.io.UnsupportedEncodingException"%>
<%@ page language="java" import ="java.security.InvalidAlgorithmParameterException"%>
<%@ page language="java" import ="java.security.InvalidKeyException"%>
<%@ page language="java" import ="java.security.NoSuchAlgorithmException"%>

<%@ page language="java" import ="javax.crypto.Cipher"%>
<%@ page language="java" import ="javax.crypto.NoSuchPaddingException"%>
<%@ page language="java" import ="javax.crypto.spec.IvParameterSpec"%>
<%@ page language="java" import ="javax.crypto.spec.SecretKeySpec"%>
<%@ page language="java" import ="sun.misc.BASE64Encoder"%>	
<%@ page language="java" import="java.util.*"%>


<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/shtml; charset=iso-8859-1">
</head>

<body>

<%	

	String str=session.getAttribute("un").toString();			
String query="update student set password='"+request.getParameter("newp")+"' where studentnm='"+str+"'";

int i=st.executeUpdate(query);
	response.sendRedirect("ui.html");
	
%>




</body>
</html>
