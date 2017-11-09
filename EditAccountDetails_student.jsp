<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<script src="Scripts/swfobject_modified.js" type="text/javascript"></script>
</head>
<%@ include file="conn.jsp"%>
<body>
<form id="form1" name="form1" method="post" action="EditAccountDetails_student_code.jsp">
  <p>&nbsp;</p>
  <table  width="100%" height="810" align="center" cellpadding="0" cellspacing="0" rules="none">
    <tr>
      <td><object id="FlashID" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="199" height="161">
        <param name="movie" value="bular.swf" />
        <param name="quality" value="high" />
        <param name="wmode" value="opaque" />
        <param name="swfversion" value="7.0.70.0" />
        <!-- This param tag prompts users with Flash Player 6.0 r65 and higher to download the latest version of Flash Player. Delete it if you don’t want users to see the prompt. -->
        <param name="expressinstall" value="Scripts/expressInstall.swf" />
        <param name="BGCOLOR" value="#FFFFFF" />
        <!-- Next object tag is for non-IE browsers. So hide it from IE using IECC. -->
        <!--[if !IE]>-->
        <object type="application/x-shockwave-flash" data="bular.swf" width="199" height="161">
          <!--<![endif]-->
          <param name="quality" value="high" />
          <param name="wmode" value="opaque" />
          <param name="swfversion" value="7.0.70.0" />
          <param name="expressinstall" value="Scripts/expressInstall.swf" />
          <param name="BGCOLOR" value="#FFFFFF" />
          <!-- The browser displays the following alternative content for users with Flash Player 6.0 and older. -->
          <div>
            <h4>Content on this page requires a newer version of Adobe Flash Player.</h4>
            <p><a href="http://www.adobe.com/go/getflashplayer"><img src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="Get Adobe Flash player" width="112" height="33" /></a></p>
          </div>
          <!--[if !IE]>-->
        </object>
        <!--<![endif]-->
      </object>        <img src="img/gbc_header_graphic.jpg" width="980" height="200" /></td>
    </tr>
    <tr>
      <td height="44" bgcolor="#800000">&nbsp;</td>
    </tr>
    <tr>
      <td width="868" height="489" valign="top"><p>&nbsp;</p>
        <table width="685" border="0" align="center" cellpadding="3" cellspacing="3">
        <tr>
          <td colspan="2"><hr /></td>
          </tr>
        <tr>
          <td colspan="2" align="center"><h1>Edit Account Details</h1></td>
          </tr>
        <tr>
          <td colspan="2"><hr /></td>
          </tr>
        <tr>
          <%
String un=session.getAttribute("un").toString();
				
String query="select * from student where studentid='"+un+"'";
ResultSet rs=st.executeQuery(query);
				
            while(rs.next())
{
%>
          <td width="150" style="font-size:12px">Name</td>
          <td width="514" style="font-size:12px"><input name="t1" type="text" disabled="disabled" id="t1"  value="<%=rs.getString(1)%>" /></td>
          </tr>
        <tr>
          <td style="font-size:12px">Password</td>
          <td style="font-size:12px"><input name="t2" type="password" disabled="disabled" id="t2"  value="<%=rs.getString(2)%>" /></td>
          </tr>
        <tr>
          <td style="font-size:12px"> Email Id</td>
          <td style="font-size:12px"><input type="text"  value="<%=rs.getString(3)%>" name="t3" id="t3" /></td>
          </tr>
        <tr>
          <td style="font-size:12px">Email Id</td>
          <td style="font-size:12px"><input type="text"  value="<%=rs.getString(4)%>" name="t4" id="t4" /></td>
          </tr>
        <tr>
          <td style="font-size:12px">Mobile</td>
          <td style="font-size:12px"><input name="t5" type="text" id="t5"   value="<%=rs.getString(5)%>" /></td>
          </tr>
        <tr>
          <td style="font-size:12px">Address</td>
          <td style="font-size:12px"><input name="t6" type="text" id="t6"   value="<%=rs.getString(6)%>" /></td>
          </tr>
        <tr>
          <td style="font-size:12px">Cource</td>
          <td style="font-size:12px"><input name="t7" type="text" disabled="disabled" id="t7"   value="<%=rs.getString(7)%>" /></td>
        </tr>
        <tr>
          <td style="font-size:12px">&nbsp;</td>
          <td style="font-size:12px"><input type="submit" name="button" id="button" value="Submit" /></td>
        </tr>
        <%
				}
				%>
      </table>
      <p>&nbsp;</p></td>
    </tr>
    <tr>
      <td height="44" bgcolor="#800000">&nbsp;</td>
    </tr>
  </table>
</form>
<script type="text/javascript">
swfobject.registerObject("FlashID");
</script>
</body>
</html>