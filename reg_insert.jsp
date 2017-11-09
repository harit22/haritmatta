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
String a=request.getParameter("t1");
//String b=request.getParameter("t2");

int b= (int) (Math.random() * 10000000);


String c=request.getParameter("t3");
String d=request.getParameter("t4");
String e=request.getParameter("t5");
String f=request.getParameter("select");
String g=request.getParameter("select2");
String h=request.getParameter("t6");
String i=request.getParameter("t7");


session.setAttribute("un",a);
session.setAttribute("pas",b);
session.setAttribute("to1",c);




//---------------------------------------------------------------------------------------------------------------------------

 String u;
byte[] userBytes=null;
byte[] raw = null;
u=String.valueOf(b);
  String key="1111111111111111";
    
	
	 try
     {

SecretKeySpec keySpec = new SecretKeySpec(key.getBytes(), "AES");
IvParameterSpec ivSpec = new IvParameterSpec(key.getBytes());
Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
cipher.init(Cipher.ENCRYPT_MODE, keySpec, ivSpec);
userBytes = u.getBytes("UTF8");
raw = cipher.doFinal(userBytes);
	} 

catch (Exception e1)
{
	e1.printStackTrace();
}

BASE64Encoder encoder = new BASE64Encoder();
String base64u = encoder.encode(raw);


try
{

String query="insert into student values('"+a+"','"+base64u+"','"+c+"','"+d+"','"+e+"','"+f+"','"+g+"','"+h+"','"+i+"')";
int in1=st.executeUpdate(query);

session.setAttribute("msg","Registered Successfully");

response.sendRedirect("regmails.jsp");
}
catch(Exception et)
{
out.println(et.getMessage());
}





%>
</body>
</html>
