<%-- 
    Document   : ProjectManagement
    Created on : Apr 11, 2018, 3:14:02 PM
    Author     : shezi
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "kbcsdatabasev5";
String userid = "cassius";
String password = "cayShez@123";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <title>IAB</title>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="css/bootstrap.min.css" />
        <link rel="stylesheet" href="css/bootstrap-responsive.min.css" />
        <link rel="stylesheet" href="css/colorpicker.css" />
        <link rel="stylesheet" href="css/datepicker.css" />
        <link rel="stylesheet" href="css/uniform.css" />
        <link rel="stylesheet" href="css/select2.css" />
        <link rel="stylesheet" href="css/matrix-style.css" />
        <link rel="stylesheet" href="css/matrix-media.css" />
        <link rel="stylesheet" href="css/bootstrap-wysihtml5.css" />
        <link href="font-awesome/css/font-awesome.css" rel="stylesheet" />
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>
    </head>
    <body>

        <!--Header-part-->
        <div id="header">
            <h1><a href="dashboard.html">Matrix Admin</a></h1>
        </div>
        <!--close-Header-part--> 

        <!--top-Header-menu-->
        <div id="user-nav" class="navbar navbar-inverse">
            <ul class="nav">
                <li  class="dropdown" id="profile-messages" ><a title="" href="#" data-toggle="dropdown" data-target="#profile-messages" class="dropdown-toggle"><i class="icon icon-user"></i>  <span class="text">Welcome User</span><b class="caret"></b></a>
      <ul class="dropdown-menu">
        <li><a href="Profile.jsp"><i class="icon-user"></i> My Profile</a></li>
        <li class="divider"></li>
        <li><a href="#"><i class="icon-check"></i> My Tasks</a></li>
        <li class="divider"></li>
        <li><a href="login.html"><i class="icon-key"></i> Log Out</a></li>
      </ul>
    </li>
                
                <li class=""><a title="" href="InvalidateServlet.do"><i class="icon icon-share-alt"></i> <span class="text">Logout</span></a></li>
            </ul>
        </div>


        <!--sidebar-menu-->

   <div id="sidebar"><a href="#" class="visible-phone"><i class="icon icon-home"></i>Dashboard</a>
  <ul>
    <li class="submenu active"><a href="index.jsp"><i class="icon icon-home"></i> <span>Profile</span></a>
    
          <ul>
                    
                    <li><a href="CreateEmployee.jsp"><i class="icon icon-search"></i> <span>Add Users</span></a></li>
                   <li> <a href="Search.jsp"><i class="icon icon-search"></i> <span>Search/Filter</span></a> </li>
             

                </ul>
        
         </li>
    <li> <a href="#"><i class="icon icon-search"></i> <span>Leads Management</span></a> </li>
    <li> <a href="#"><i class="icon icon-table"></i> <span>Report</span></a> </li>
    <li><a href="#"><i class="icon icon-dashboard"></i> <span>Dashboard</span></a></li>
    <li class="submenu"> <a href="#"><i class="icon icon-th-list"></i> <span>Opportunity Management</span> <span class="label label-important"></span></a>
               <ul>
                    <li><a href="ViewOpp.jsp"><i class="icon icon-search"></i> <span>View Opportunities</span></a></li>
                    <li> <a href="ImportOpp.jsp"><i class="icon icon-table"></i> <span>Import Opportunities</span></a></li>
                    

                </ul>
            </li>
            
            
               <li class="submenu"> <a href="#"><i class="icon icon-th-list"></i> <span>Project Management</span> <span class="label label-important"></span></a>
                   
                        <ul>
                <li><a href="CreateProject2.jsp"><i class="icon icon-home"></i><span>Create Project</span></a></li>
                <li><a href="currentProject.jsp"><i class="icon icon-search"></i> <span>View Projects</span></a></li>
                <li> <a href="ViewProjectTask.jsp"><i class="icon icon-table"></i> <span>View Project Tasks</span></a></li>
                 <li><a href="CreateProReport.jsp"><i class="icon icon-table"></i> <span>Create Report</span></a></li>
                
            </ul>
               </li>
               
               <li class="submenu"> <a href="#"><i class="icon icon-th-list"></i> <span>Sales Management</span> <span class="label label-important"></span></a>
                   
                  <ul>
                <li><a href="SalesOpportunity.jsp"><i class="icon icon-home"></i><span>Manage Sales</span></a></li>
                <li><a href="CreateSalesReport.jsp"><i class="icon icon-home"></i><span>Create Report</span></a></li>
                    
            </ul>
                   
                   </li>
               <li class="submenu"> <a href="#"><i class="icon icon-th-list"></i> <span>Account Management</span> <span class="label label-important"></span></a>
                   
                   <ul>
                 <li><a href="CreateAccont.jsp"><i class="icon icon-home"></i><span>Create Account</span></a></li>
                 
                 <li><a href="ViewContracts.jsp"><i class="icon icon-home"></i><span>Manage Accounts</span></a></li>
                 
                <li> <a href="CreateAccReport.jsp"><i class="icon icon-table"></i> <span>Create Report</span></a></li>
                
            </ul>
               </li>
  </ul>
</div>

        <!--close-left-menu-stats-sidebar-->

        <div id="content">
<div id="content-header">
  <div id="breadcrumb"> <a href="index.jsp" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="#" class="tip-bottom">Business Profile</a> <a href="#" class="current">Create Business Profile</a> </div>
  <h1>Create Users</h1>
</div>
<div class="container-fluid">
  <hr>
  <div class="row-fluid">
    <div class="span12">
      <div class="widget-box">
        <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
          <h5>Create</h5>
        </div>
        <div class="widget-content nopadding">
         <form id="loginform" class="form-horizontal" method="POST" action="SignupServlet.do">
                
                
                <div class="control-group">
                     <label class="control-label">Name :</label>
                    <div class="controls">
                        <input type="text" class="span4"  name="name" id="required"/>
                        </div>
                    </div>
                
                
                <div class="control-group">
                     <label class="control-label">Last Name :</label>
                    <div class="controls">
          
                        <input type="text" class="span4" name="lastName" id="required"/>
                        </div>
                    </div>
              
                <div class="control-group">
                     <label class="control-label">Mobile No :</label>
                    <div class="controls">
                        <input type="text" class="span4" name="contactNumber" id="required"/>
                        </div>
                    </div>
               

                <div class="control-group">
                     <label class="control-label">Physical Address :</label>
                    <div class="controls">
                          <textarea class="span4" name="address"></textarea>
                        </div>
                    </div>
              

               
               

                <div class="control-group">
                     <label class="control-label">Email Address :</label>
                    <div class="controls">
                        <input type="text"  class="span4" name="emailAddress" id="email"/>
                        </div>
                    </div>
             
              <div class="control-group">
                     <label class="control-label">Username :</label>
                    <div class="controls">
                        <input type="text" class="span4" name="userName" id="required"/>
                        </div>
                    </div>
              
                
                 <div class="control-group">
                      <label class="control-label">Password :</label>
                    <div class="controls">
                        <input type="password"  class="span4" name="password"/>
                        </div>
                    </div>
             
             <div class="control-group">
                      <label class="control-label">Confirm Password :</label>
                    <div class="controls">
                        <input type="password" class="span4" name="password2"/>
                        </div>
                    </div>
               
                
            

                
                 <div class="form-actions">
              <button type="submit" class="btn btn-success">Save</button>
    
            </div>
            </form>
        </div>
      </div>
    </div>
  </div>
 
</div></div>

    </div></div>
<!--Footer-part-->
<div class="row-fluid">
    <div id="footer" class="span12"> 2017 &copy; IAB. Brought to you by KBCS Solutions</div>
</div>
<!--end-Footer-part--> 
<script src="js/jquery.min.js"></script> 
<script src="js/jquery.ui.custom.js"></script> 
<script src="js/bootstrap.min.js"></script> 
<script src="js/bootstrap-colorpicker.js"></script> 
<script src="js/bootstrap-datepicker.js"></script> 
<script src="js/jquery.toggle.buttons.js"></script> 
<script src="js/masked.js"></script> 
<script src="js/jquery.uniform.js"></script> 
<script src="js/select2.min.js"></script> 
<script src="js/matrix.js"></script> 
<script src="js/matrix.form_common.js"></script> 
<script src="js/wysihtml5-0.3.0.js"></script> 
<script src="js/jquery.peity.min.js"></script> 
<script src="js/bootstrap-wysihtml5.js"></script> 
<script>
    $('.textarea_editor').wysihtml5();
</script>
</body>
</html>
