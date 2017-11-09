<%@ page  import="java.sql.*"  %>
<%@ include file="conn.jsp"%>
<%@ page import="java.io.*"  %>
<%@ page language="java" import="java.io.UnsupportedEncodingException"%>
<%@ page language="java" import ="java.security.InvalidAlgorithmParameterException"%>
<%@ page language="java" import ="java.security.InvalidKeyException"%>
<%@ page language="java" import ="java.security.NoSuchAlgorithmException"%>

<%@ page language="java" import ="javax.crypto.Cipher"%>
<%@ page language="java" import ="javax.crypto.NoSuchPaddingException"%>
<%@ page language="java" import ="javax.crypto.spec.IvParameterSpec"%>
<%@ page language="java" import ="javax.crypto.spec.SecretKeySpec"%>
<%@ page language="java" import ="sun.misc.BASE64Encoder"%>	
<%@ page language="java" import ="sun.misc.BASE64Decoder"%>	
<%@ page language="java" import="java.util.*"%>

<%
String un=session.getAttribute("un").toString();
String pw=session.getAttribute("pw").toString();
session.setAttribute("un",un);

//----------------------------------------------------------------------------------------------------------------
String u1,u=null,ivx="1111111111111111";
byte[] userBytes=null;
byte[] raw = null;
 //----------------------------------------------------------------------------------------------------------------------
try
{

PreparedStatement ps=con.prepareStatement("select * from  student    where studentnm='"+un+"'");
ResultSet rs=ps.executeQuery();
String email;

while(rs.next())
{
	u=rs.getString(2);
	
}
//---------------------------------------------------------------------------------------------------

          
 //-----------------------------------------------------------------------------------------------------

if(u.equals(pw))
{


response.sendRedirect("index1.jsp");
}
else
{
%>
<script href="login.jsp">window.alert("INVALID EMAIL OR PASSWORD !!!");
window.location.href = "login.jsp";
</script>
<%
//response.sendRedirect("login.jsp");
}
}
catch(Exception e)
{
out.print(e.getMessage());
}

%>
