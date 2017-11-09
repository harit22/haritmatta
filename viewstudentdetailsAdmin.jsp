<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
      <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>EDUERA</title>
	<!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
     <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
        <!-- CUSTOM STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
     <!-- GOOGLE FONTS-->
   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
</head>
<body>
   <%@ include file="conn.jsp"%>  
           
          
    <div id="wrapper">
         <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="adjust-nav">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">
                        <img src="assets/img/logo.png" />
                    </a>
                </div>
              
                 <span class="logout-spn" >
                  <a href="logout.jsp" style="color:#fff;">LOGOUT</a>  

                </span>
            </div>
        </div>
        <!-- /. NAV TOP  -->
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
                 

 <li >
                        <a href="admin.jsp" ><i class="fa fa-desktop "></i>Dashboard <span class="badge"></span></a>
                    </li>
                   

                    <li class="active-link">
                        <a href="#"><i class="fa fa-table "></i>View Students <span class="badge"></span></a>
                    </li>
                    <li >
                        <a href="msg_post.jsp"><i class="fa fa-edit "></i>Messages  <span class="badge"></span></a>
                    </li>



                 <li>
                        <a href="notice_post.jsp"><i class="fa fa-qrcode "></i>Notifications</a>
                    </li>
                    
                </ul>
                            </div>

        </nav>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Students</h2>   
                    </div>
                </div>              
                 <!-- /. ROW  -->
                  <hr />
                <table width="100%" align="center" cellpadding="0" cellspacing="0">
  
    
        <tr>
          <td width="58">Name</td>
		  
          <td width="100">Email ID</td>
          <td width="100">Mobile</td>
          
          <td width="100">Course</td>
		   <td width="100">Duration</td>
          
		  
        
          </tr>
        <tr>
          <td colspan="7"><hr /></td>
          </tr>
        <tr>
        
        
          <%
					
String query="select * from student";
ResultSet rs=st.executeQuery(query);
	int i=0;			
            while(rs.next())
{
%>
  
          <td style="font-size:12px"><%=rs.getString(1)%></td>
          <td style="font-size:12px"><%=rs.getString(3)%></td>
          <td style="font-size:12px"><%=rs.getString(4)%></td>
          
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
      <td height="39" bgcolor="#FF0000">&nbsp;</td>
    </tr>
  </table>
                             
                        </div>
              
                 <!-- /. ROW  -->           
    </div>
             <!-- /. PAGE INNER  -->
            </div>
         <!-- /. PAGE WRAPPER  -->
        </div>
    <div class="footer">
      
    
             
        
        </div>
          

     <!-- /. WRAPPER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="assets/js/jquery-1.10.2.js"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script src="assets/js/bootstrap.min.js"></script>
      <!-- CUSTOM SCRIPTS -->
    <script src="assets/js/custom.js"></script>
    
   
</body>
</html>
