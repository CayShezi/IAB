<%-- 
    Document   : ProjectManagement
    Created on : Apr 11, 2018, 3:14:02 PM
    Author     : shezi
--%>

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
         <script src="js/modernizr.js"></script>
    
         
         <style>
#popup1 { display:none; }
</style>
         
 
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
    
      
   
    
    <ul style="float:right">
        <a href="ViewDeferredProjects.jsp" title="Grid View"><i class="icon-list-ul" style="font-size: 20px"></i></a>&nbsp;
        <a href="#"  title="Card View"><i class="icon-th" style="font-size: 20px"></i></a>
  
     </ul>

  <div class="row-fluid">
    <div class="span12">
     <div class="widget-box">
          
          <div class="widget-content">
            <div class="todo">
                
                                                                     <div id="exTab1">	
                <ul  class="nav nav-pills">
			 <li><a href="currentProject.jsp">Current Projects</a></li>
                <li><a href="SubmiteedProject.jsp">Submitted Projects</a></li>
                <li><a href="ViewProject.jsp">Pending Projects</a></li>
                <li class="active"><a href="ViewDeferredProjects.jsp">Deferred Projects</a></li>
			
</ul>
  </div>
            <table>
              
                                      <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from projectmanagement p, employees e where status = '" + "Deferred" + "' AND e.employeeID = p.projectManager";
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


                        <div class="wrapper">
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
		<a class="badge" href="ViewTaskPerProject.jsp?id=<%=resultSet.getString("projectID")%>" ><%=totalTask%></a>
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
              
              
    
              
           <div id="popup1">
                <h2>Test Form</h2>
                <form>
                    
       
  <div class="controls">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" class="span4" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
 
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
  </div>
  
  
  <div class="form-group">
    <label for="exampleTextarea">Example textarea</label>
    <textarea class="form-control" id="exampleTextarea" rows="2"></textarea>
  </div>
 
  
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
              
              </div>
              
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
