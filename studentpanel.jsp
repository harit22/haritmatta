<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<script src="SpryAssets/SpryMenuBar.js" type="text/javascript"></script>
<link href="SpryAssets/SpryMenuBarVertical.css" rel="stylesheet" type="text/css" />
<style type="text/css">
.style20 {font-size: 14px;
	font-weight: bold;
}
.style201 {font-size: 14px;
	font-weight: bold;
}
</style>
</head>

<body>
<form id="form1" name="form1" method="post" action="">

  <table width="100%" align="center" cellpadding="3" cellspacing="3">
    <tr>
      <td colspan="2"><em>Eduera</em></td>
    </tr>
    <tr>
      <td height="37" colspan="2" bgcolor="#D11A16">&nbsp;</td>
    </tr>
    <tr>
      <td width="145" valign="top" bgcolor="#EEEEEE"><ul id="MenuBar1" class="MenuBarVertical">
        <li><a href="viewprofilestudent.jsp">My Profile</a>          </li>
        <li><a href="EditAccountDetails_student.jsp">Update Profile</a></li>
<li><a href="../ERecordSystem/login.jsp">Logout</a></li>
      </ul></td>
      <td width="1224" align="left" valign="top" bgcolor="#A2C9F0"><img src="img/tt.jpg" width="1180" height="500" /></td>
    </tr>
    <tr>
      <td height="37" colspan="2" valign="top" bgcolor="#D11A16">&nbsp;</td>
    </tr>
  </table>
</form>
<script type="text/javascript">
var MenuBar1 = new Spry.Widget.MenuBar("MenuBar1", {imgRight:"SpryAssets/SpryMenuBarRightHover.gif"});
</script>
</body>
</html>