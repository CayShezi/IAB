<%-- 
    Document   : BusinessProfileView
    Created on : 12 Oct 2017, 10:10:41 AM
    Author     : KBCS Solutions
--%>
<%@page import="za.ac.kbcs.model.SourceData"%>
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
<%@page import="java.util.ArrayList"%>
<%@page import="za.ac.kbcs.model.SourceData"%>
<%@page import="java.util.List"%>
<%@page import="za.ac.kbcs.model.SourceName"%>
<%@page import="za.ac.kbcs.model.Sources"%>
<%@page import="javax.xml.transform.Source"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>IAB</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/bootstrap-responsive.min.css" />
<link rel="stylesheet" href="css/fullcalendar.css" />
<link rel="stylesheet" href="css/matrix-style.css" />
<link rel="stylesheet" href="css/matrix-media.css" />
<link href="font-awesome/css/font-awesome.css" rel="stylesheet" />
<link rel="stylesheet" href="css/jquery.gritter.css" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>
        <script src="js/modernizr.js"></script>
 <link rel="stylesheet" href="style/style.css">
        <link rel="stylesheet" href="report/css/style.css">
        <link rel="stylesheet" type="text/css" href="stylesheet2.css">

</head>
<body>

<!--Header-part-->
<div id="header">
  <h1><a href="dashboard.html">IAB</a></h1>
</div>
<!--close-Header-part--> 


<!--top-Header-menu-->
<div id="user-nav" class="navbar navbar-inverse">
  <ul class="nav">
    <li  class="dropdown" id="profile-messages" ><a title="" href="#" data-toggle="dropdown" data-target="#profile-messages" class="dropdown-toggle"><i class="icon icon-user"></i>  <span class="text">Welcome User</span><b class="caret"></b></a>
      <ul class="dropdown-menu">
        <li><a href="#"><i class="icon-user"></i> My Profile</a></li>
      </ul>
    </li>
    <li class=""><a title="" href="InvalidateServlet.do"><i class="icon icon-share-alt"></i> <span class="text">Logout</span></a></li>
  </ul>
</div>
<!--close-top-Header-menu-->
<!--start-top-serch-->

<!--close-top-serch-->
<!--sidebar-menu-->

<div id="sidebar"><a href="#" class="visible-phone"><i class="icon icon-home"></i>Dashboard</a>
  <ul>
    <li class=" active"> <a href="index.jsp"><i class="icon icon-search"></i> <span>Dashboard</span></a> </li>
    <li class="submenu"><a href="Profile.jsp"><i class="icon icon-home"></i> <span>Profile</span></a>
    
          <ul>
                    
                    <li><a href="CreateEmployee.jsp"><i class="icon icon-search"></i> <span>Add Users</span></a></li>
                   <li> <a href="Search.jsp"><i class="icon icon-search"></i> <span>Search/Filter</span></a> </li>
                   <li> <a href="#"><i class="icon icon-search"></i> <span>Edit Profile</span></a> </li>
                   <li> <a href="#"><i class="icon icon-search"></i> <span>View Users</span></a> </li>
                   
             

                </ul>
        
         </li>
    <li> <a href="#"><i class="icon icon-search"></i> <span>Leads Management</span></a> </li>
    <li> <a href="#"><i class="icon icon-table"></i> <span>Report</span></a> </li>
    
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
<!--sidebar-menu-->

<!--main-container-part-->
<div id="content">
<!--breadcrumbs-->
  <div id="content-header">
    <div id="breadcrumb"> <a href="index.jsp" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a></div>
  </div>
<!--End-breadcrumbs-->

<%
    SourceName source = (SourceName)session.getAttribute("source");
    String souceName = source.getSourceName();
    String sourceName2 = source.getSourceName2(); 
    String sourceName3 = source.getSourceName3(); 

%>

<!--Action boxes-->
  <div class="container-fluid">

    
    <div class="row-fluid">
      <div class="span12">
        <div class="widget-box">
            
             <form method="POST" action="Link2.do">
            <section>
                
                
  <!--for demo wrap-->
  <div class="tbl-header">
      

      
     <table class="table table-bordered data-table">
                                        <thead>
                                            <tr>
                                                
                                                <th>Description</th>
                                                <th>Date Created</th>
                                                <th>Action</th>
                                                 <th>Ranking</th>
                                                  <th>Confirm</th>
                                                  
                                                
                                                
                                            </tr>
                                            
                                            <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from record where score IS NOT NULL ORDER BY score DESC";
resultSet = statement.executeQuery(sql);

int i=0;
while(resultSet.next()){
%>
                                        </thead>
                                        <tbody>
                                            
                                       <tr>
<td><%=resultSet.getString("description") %></td>
<td><%=resultSet.getString("date") %></td>
<td><a href="Delete2.jsp?id=<%=resultSet.getString("i_d")%>"><button type="button" class="delete">Delete</button></a></td>
<td><%=resultSet.getString("score") %></td>
<td><input type="checkbox" name="selected" class="with-check" value="<%= resultSet.getString("i_d")%>"></td>
</tr>
<%
i++;
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
                                        </tbody>
                                    </table>
      
  </div>
                                        
                                       
 
           </section>
                                        
                                        
                                        
                                        <div class="form-actions">
                    <span class="pull-left"><a href="Dashboard2.jsp" class="flip-link btn btn-success" id="to-login">&laquo; Back to Dashboard </a></span>
                    <span class="pull-right"><button type="submit" class="btn btn-success">Publish</button></span>
                </div>
             </form>                            
                                       
</div>
      </div>
                                       

  </div>
 


       
                                        
                                       
                                        
                                        
    </div>
</div>
      
     

<!--end-main-container-part-->

<!--Footer-part-->

<div class="row-fluid">
  <div id="footer" class="span12"> 2017 &copy; IAB. Brought to you by KBCS Solutions</div>
</div>

<!--end-Footer-part-->
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script  src="reportjava/js/index.js"></script>
    <script  type="text/javascript"> document.getElementById("choice_31_8_0").checked = false;</script>
<script src="js/excanvas.min.js"></script> 
<script src="js/jquery.min.js"></script> 
<script src="js/jquery.ui.custom.js"></script> 
<script src="js/bootstrap.min.js"></script> 
<script src="js/jquery.flot.min.js"></script> 
<script src="js/jquery.flot.resize.min.js"></script> 
<script src="js/jquery.peity.min.js"></script> 
<script src="js/fullcalendar.min.js"></script> 
<script src="js/matrix.js"></script> 
<script src="js/matrix.dashboard.js"></script> 
<script src="js/jquery.gritter.min.js"></script> 
<script src="js/matrix.interface.js"></script> 
<script src="js/matrix.chat.js"></script> 
<script src="js/jquery.validate.js"></script> 
<script src="js/matrix.form_validation.js"></script> 
<script src="js/jquery.wizard.js"></script> 
<script src="js/jquery.uniform.js"></script> 
<script src="js/select2.min.js"></script> 
<script src="js/matrix.popover.js"></script> 
<script src="js/jquery.dataTables.min.js"></script> 
<script src="js/matrix.tables.js"></script> 

<script type="text/javascript">
  // This function is called from the pop-up menus to transfer to
  // a different page. Ignore if the value returned is a null string:
  function goPage (newURL) {

      // if url is empty, skip the menu dividers and reset the menu selection to default
      if (newURL !== "") {
      
          // if url is "-", it is this page -- reset the menu:
          if (newURL === "-" ) {
              resetMenu();            
          } 
          // else, send page to designated URL            
          else {  
            document.location.href = newURL;
          }
      }
  }

// resets the menu selection upon entry to this page:
function resetMenu() {
   document.gomenu.selector.selectedIndex = 2;
}
</script>

</body>
</html>

