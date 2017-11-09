<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<style type="text/css">
.style19 {font-size: 11px}
#form1 table tr td table tr td strong {
	text-align: center;
}
</style>
</head>
<%@ include file="conn.jsp"%>
<body>
<form id="form1" name="form1" method="post" action="">
  <table width="100%" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td align="center"><em>Eduera</em></td>
    </tr>
    <tr>
      <td height="46" bgcolor="#FF0000">&nbsp;</td>
    </tr>
    <tr>
      <td width="868" valign="top"><p>&nbsp;</p>
        <table width="90%" align="center" cellpadding="8" cellspacing="8">
        <tr>
          <td colspan="7"><hr /></td>
        </tr>
        <tr>
          <td width="128"><strong> Id </strong></td>
          <td width="128"><strong>Password</strong></td>
          <td width="128"><strong> Name</strong></td>
          <td width="128"><strong>Email Id</strong></td>
          <td width="128"><strong>Mobile</strong></td>
          <td width="128"><strong>Address</strong></td>
          <td width="128"><strong>Cource</strong></td>
          </tr>
        <tr>
          <td colspan="7"><hr /></td>
          </tr>
        <tr>
        
          <%
			String a=session.getAttribute("un").toString();			
String query="select * from student where studentnm='"+a+"'";
ResultSet rs=st.executeQuery(query);
				
            while(rs.next())
{
%>
  
          <td style="font-size:12px"><%=rs.getString(1)%></td>
          <td style="font-size:12px"><%=rs.getString(2)%></td>
          <td style="font-size:12px"><%=rs.getString(3)%></td>
          <td style="font-size:12px"><%=rs.getString(4)%></td>
          <td style="font-size:12px"><%=rs.getString(5)%></td>
          <td style="font-size:12px"><%=rs.getString(6)%></td>
          <td style="font-size:12px"><%=rs.getString(7)%></td>
          </tr>
        <%
				}
				%>
      </table>
      <p>&nbsp;</p></td>
    </tr>
    <tr>
      <td height="38" bgcolor="#FF0000">&nbsp;</td>
    </tr>
  </table>
</form>
</body>
</html>