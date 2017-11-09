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
<form id="form1" name="form1" method="post" action="calculate.jsp">
  <table width="95%" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td><img src="img/header_no SM.JPG" width="1280" height="190" /></td>
    </tr>
    <tr>
      <td height="35" bgcolor="#EA2E2C">&nbsp;</td>
    </tr>
    <tr>
      <td width="868" valign="top"><p>&nbsp;</p>
        <table width="977" align="center" cellspacing="4">
        <tr>
          <td colspan="9"><hr /></td>
        </tr>
        <tr>
          <td width="58">Sno</td>
          <td width="100"><strong>Name</strong></td>
          <td width="100"><strong>Roll</strong></td>
          <td width="100"><strong>Branch</strong></td>
          <td width="100"><strong>Section</strong></td>
          <td width="100"><strong>Subject</strong></td>
          <td width="100"><strong>Present</strong></td>
          <td width="100"><strong>Abusent</strong></td>
          <td width="100">Date</td>
          </tr>
        <tr>
          <td colspan="9"><hr /></td>
          </tr>
        <tr>
        
        
          <%
					
String query="select * from attendence";
ResultSet rs=st.executeQuery(query);
	int i=0;			
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
          <td style="font-size:12px"><%=rs.getString(8)%></td>
           <td style="font-size:12px"><%=rs.getString(9)%></td>
          </tr>
        <%
				}
				%>
      </table>
      <p>&nbsp;</p></td>
    </tr>
    <tr>
      <td height="35" bgcolor="#EA2E2C">&nbsp;</td>
    </tr>
  </table>
</form>
</body>
</html>