<%-- 
    Document   : TestSlide
    Created on : Jul 20, 2018, 1:02:37 PM
    Author     : shezi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="za.ac.kbcs.dao.DaoClasses"%>
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
ResultSet resultSet2 = null;
ResultSet resultSet3 = null;

int totalTask = 0;
int totalCompleted = 0;
int pecentage = 0;
%>
<!DOCTYPE html>

<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>Responsive Infinite Carousel</title>
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no" />
<script type="text/javascript" src="//use.typekit.net/kei2cfp.js"></script>
<script type="text/javascript">try{Typekit.load();}catch(e){}</script>
  
  
      <style>
      /* NOTE: The styles were added inline because Prefixfree needs access to your styles and they must be inlined if they are on local disk! */
      * {
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}

body, html {
  font-family: "europa-1","europa-2", sans-serif;
  overflow: hidden;
}

.wrapper {
  max-width: 940px;
  width: 100%;
  position: relative;
  overflow: hidden;
  margin: 0 auto;
}

/**
 * Use this wrapper only for demo purposes
 * So you can show the items outside the wrapper
 */
.wrapper--demo {
  overflow: visible;
}
.wrapper--demo:after, .wrapper--demo:before {
  content: "";
  position: absolute;
  width: 800px;
  height: 100%;
  top: 0;
  left: 100%;
  background: rgba(255, 255, 255, 0.8);
  z-index: 2;
}
.wrapper--demo:before {
  left: -800px;
}

.carousel {
  width: 100%;
  position: relative;
}
.carousel .carousel__content {
  width: auto;
  position: relative;
  overflow: hidden;
  -webkit-backface-visibility: hidden;
  -webkit-transition: translate3d(0, 0, 0);
}
.carousel .carousel__content .item {
  display: block;
  float: left;
  width: 100%;
  position: relative;
}
.carousel .carousel__content .item .title {
  position: absolute;
  top: 50%;
  left: 0;
  margin: -33px 0 0 0;
  padding: 0;
  font-size: 3rem;
  width: 100%;
  text-align: center;
  letter-spacing: .3rem;
  color: #FFF;
}
.carousel .carousel__content .item .title--sub {
  margin-top: 20px;
  font-size: 1.2em;
  opacity: .5;
}
.carousel .carousel__content .item img {
  width: 100%;
  max-width: 100%;
  display: block;
}
.carousel .carousel__nav {
  position: absolute;
  width: 100%;
  top: 50%;
  margin-top: -17px;
  left: 0;
  z-index: 1;
}
.carousel .carousel__nav .nav {
  position: absolute;
  top: 0;
  color: #000;
  background: #FFF;
  padding: 8px 12px;
  font-weight: bold;
  text-decoration: none;
  font-size: .8rem;
  transition: padding .25s ease;
}
.carousel .carousel__nav .nav:hover {
  padding: 8px 20px;
}
.carousel .carousel__nav .nav--left {
  border-radius: 0px 3px 3px 0px;
}
.carousel .carousel__nav .nav--right {
  right: 0;
  border-radius: 3px 0px 0px 3px;
}

    </style>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>
    
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
     <script src="js/modernizr.js"></script>
     
     
     <link href="dist/jquery.simple-popup.min.css" rel="stylesheet" type="text/css">
       
        
          
  <link rel='stylesheet prefetch' href='https://use.fontawesome.com/releases/v5.0.8/css/all.css'>
<link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700'>
<link rel="stylesheet" href="css/projectTile.css">

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
        <li><a href="#"><i class="icon-user"></i> My Profile</a></li>
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

 <jsp:include page="ProjectInclude.jsp"></jsp:include>
        <!--close-left-menu-stats-sidebar-->

       
                        <div id="content">
<div id="content-header">
  <div id="breadcrumb"> <a href="index.jsp" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="#" class="tip-bottom">Project Management</a> <a href="#" class="current">View Projects</a> </div>
</div>
<div class="container-fluid">
    
    
    
      
    <div class="btn-group" style="float: left">
              <button data-toggle="dropdown" class="btn btn-success dropdown-toggle">Projects <span class="caret"></span></button>
              <ul class="dropdown-menu">
                <li><a href="currentProject.jsp">Current Projects</a></li>
                <li><a href="SubmiteedProject.jsp">Submitted Projects</a></li>
                <li><a href="ViewProject.jsp">Pending Projects</a></li>
                <li><a href="ViewDeferredProjects.jsp">Deferred Projects</a></li>
              </ul>
            </div>
    
    <ul style="float:right">
        <a href="ViewProject.jsp" title="Grid View"><i class="icon-list-ul" style="font-size: 20px"></i></a>&nbsp;
        <a href="#" title="Card View"><i class="icon-th" style="font-size: 20px"></i></a>
  
     </ul>

  <div class="row-fluid">
    <div class="span12">
     <div class="widget-box">
          
          <div class="widget-content">
            <div class="todo">
                 
            <table>
              
                                      <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from projectmanagement p, employees e where status = '" + "Not Started" + "' AND e.employeeID = p.projectManager";
resultSet = statement.executeQuery(sql);


%>

              <tbody>
                  <tr class="gradeX">
                      
                      <%

int i=0;
while(resultSet.next()){
%>
   

<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
int z = Integer.parseInt(resultSet.getString("projectID")); 
String sql2 = "select count(*) from projecttask where projectName = '" + z  + "'";
resultSet2 = statement.executeQuery(sql2);
resultSet2.next();

 totalTask = resultSet2.getInt(1);


 
String sql3 = "select count(*) from projecttask where projectName = '" + z + "' AND status = '" + "Completed" + "'";
resultSet3 = statement.executeQuery(sql3);
resultSet3.next();

 totalCompleted = resultSet3.getInt(1);
 
 pecentage = (totalCompleted * 100) / totalTask;
 
%>


<%
//**Should I input the codes here?**
        }
          catch (Exception e) {
e.printStackTrace();
}
%>
              
                    <td>


                        <div class="wrapper carousel__content">
	<div class="top-icons">
            
                
       <div class="dropdown" ><a href="#" data-toggle="dropdown"  class="dropdown-toggle"><i class="fas fa-ellipsis-v"></i></a>
      <ul class="dropdown-menu">
        <li><a href="#"><i class="icon-plus"></i> Add User</a></li>
        <li><a href="#"><i class="icon-remove"></i> Remove User</a></li>
        <li><a href="login.html"><i class="icon-pencil"></i> Edit Project</a></li>
      </ul>
   </div>
		
	</div>
	
	<div class="profile">
		<h3 class="name"><%=resultSet.getString("projectName")%></h3>
		<p class="badge"><%=totalTask%></p>
		<p class="description"><%=resultSet.getString("projectDescription")%></p>
		<div class="progress progress-mini active progress-striped">
        <div style="width: <%=pecentage%>%" class="bar">  <span><%=pecentage%>%</span></div>
        
      </div>
	</div>
	
	<div class="social-icons">
            <div>
			
			<h5>Start Date</h5>
			<span class="date badge badge-success"><%=resultSet.getString("startDate")%></span> 
		</div>
		
		
		
		<div>
			
			<h5>End Date</h5>
			<span class="date badge badge-important"><%=resultSet.getString("dueDate")%></span> 
		</div>
	</div>
</div>
                
        

                    </td>


<%
i++;
}

%>

</tr>

<%
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
              </tbody>
            </table>
              
              
    
              
           
              
          </div>
        </div>
              
             
    </div>
  </div>
 
</div>
        
                       <ul style="float:right">
                           <a href="CreateProject2.jsp" class="tip" title="Create Project"><i class="icon-plus-sign" style="font-size: 40px"></i></a>
         
  
     </ul>
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
 <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery.transit/0.9.9/jquery.transit.min.js'></script>
<script  src="js2/index.js"></script>
<script>
    $('.textarea_editor').wysihtml5();
</script>
<script src='https://code.jquery.com/jquery-3.3.1.slim.js'></script>
<script src="http://code.jquery.com/jquery-1.12.4.min.js"></script>
<script src="dist/jquery.simple-popup.min.js"></script>
<script>
$(document).ready(function() {
  $("a.demo-1").simplePopup();
  $("a.demo-2").simplePopup({ type: "html", htmlSelector: "#popup1" });
});
</script>
<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-36251023-1']);
  _gaq.push(['_setDomainName', 'jqueryscript.net']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
</body>




</html>

