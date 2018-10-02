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
    
         <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!--Mobile first-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Table</title>
    
    <meta name="description" content="Free Admin Template Based On Twitter Bootstrap 3.x">
    <meta name="author" content="">
    
    <meta name="msapplication-TileColor" content="#5bc0de" />
    <meta name="msapplication-TileImage" content="assets/img/metis-tile.png" />
    
    <!-- Bootstrap -->
    <link rel="stylesheet" href="assets/lib/bootstrap/css/bootstrap.css">
    
    <!-- Font Awesome -->
    <link rel="stylesheet" href="assets/lib/font-awesome/css/font-awesome.css">
    
    <!-- Metis core stylesheet -->
    <link rel="stylesheet" href="assets/css/main.css">
    
    <!-- metisMenu stylesheet -->
    <link rel="stylesheet" href="assets/lib/metismenu/metisMenu.css">
    
    <!-- onoffcanvas stylesheet -->
    <link rel="stylesheet" href="assets/lib/onoffcanvas/onoffcanvas.css">
    
    <!-- animate.css stylesheet -->
    <link rel="stylesheet" href="assets/lib/animate.css/animate.css">
 <link rel='stylesheet prefetch' href='https://use.fontawesome.com/releases/v5.0.8/css/all.css'>

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/datatables/1.10.12/css/dataTables.bootstrap.min.css">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->

    <!--For Development Only. Not required -->
    <script>
        less = {
            env: "development",
            relativeUrls: false,
            rootpath: "/assets/"
        };
    </script>
    <link rel="stylesheet" href="assets/css/style-switcher.css">
    <link rel="stylesheet/less" type="text/css" href="assets/less/theme.less">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/less.js/2.7.1/less.js"></script>
    </head>
    
    
            
       
    
         
         <style>
#popup1 { display:none; }
</style>
         
 
<link href="dist/jquery.simple-popup.min.css" rel="stylesheet" type="text/css">
       
        
          
 <link rel='stylesheet prefetch' href='https://use.fontawesome.com/releases/v5.0.8/css/all.css'>
<link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700'>
<link rel="stylesheet" href="css/projectTile.css">
    
    <body>

        <div class="bg-dark dk" id="wrap">
            
              
               <jsp:include page="TopLayer.jsp"></jsp:include>
                <!-- /#top -->
                      <jsp:include page="ProfileInclude.jsp"></jsp:include>
        <!--close-left-menu-stats-sidebar-->
        
                        <div id="content">
 
<div class="btn-group" style="float: left">
              <button data-toggle="dropdown" class="btn btn-success dropdown-toggle">Projects <span class="caret"></span></button>
              <ul class="dropdown-menu">
                <li><a href="currentProject.jsp">Current Projects</a></li>
                <li><a href="SubmiteedProject.jsp">Submitted Projects</a></li>
                <li><a href="ViewProject.jsp">Pending Projects</a></li>
                <li><a href="ViewDeferredProjects.jsp">Deferred Projects</a></li>
              </ul>
            </div>
    
    
    
   
   
  <div class="outer">
      
      <ul style="float:right">
          <a href="SubmiteedProject.jsp" title="Grid View"><i class="glyphicon glyphicon-th-list" style="font-size: 20px;color: #ffffff"></i></a>&nbsp;
        <a href="#" title="Card View"><i class="glyphicon glyphicon-th" style="font-size: 20px;color: #ffffff"></i></a>
  
     </ul>
                
                <div class="inner bg-light lter">

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
                <a class="badge" href="#" ><%=totalTask%></a>
		<p class="description"><%=resultSet.getString("projectDescription")%></p>
		<div class="progress mini progress-striped active">
        <div style="width: <%=pecentage%>%" class="progress-bar"><span><%=pecentage%>%</span></div>
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
                           <a href="CreateProject2.jsp" title="Create Project"><i class="glyphicon glyphicon-plus" style="font-size: 30px"></i></a>
         
  
     </ul>
              
    </div></div></div></div>
<!--Footer-part-->
   <jsp:include page="Footer.jsp"></jsp:include>
<!--end-Footer-part--> 
       <script src="assets/lib/jquery/jquery.js"></script>

                    <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.0/jquery-ui.min.js"></script>
                    <script src="https://cdnjs.cloudflare.com/ajax/libs/datatables/1.10.12/js/jquery.dataTables.min.js"></script>
                    <script src="https://cdnjs.cloudflare.com/ajax/libs/datatables/1.10.12/js/dataTables.bootstrap.min.js"></script>
                    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.tablesorter/2.26.6/js/jquery.tablesorter.min.js"></script>
                    <script src="//cdnjs.cloudflare.com/ajax/libs/jqueryui-touch-punch/0.2.3/jquery.ui.touch-punch.min.js"></script>

            <!--Bootstrap -->
            <script src="assets/lib/bootstrap/js/bootstrap.js"></script>
            <!-- MetisMenu -->
            <script src="assets/lib/metismenu/metisMenu.js"></script>
            <!-- onoffcanvas -->
            <script src="assets/lib/onoffcanvas/onoffcanvas.js"></script>
            <!-- Screenfull -->
            <script src="assets/lib/screenfull/screenfull.js"></script>


            <!-- Metis core scripts -->
            <script src="assets/js/core.js"></script>
            <!-- Metis demo scripts -->
            <script src="assets/js/app.js"></script>

                <script>
                    $(function() {
                      Metis.MetisTable();
                      Metis.metisSortable();
                    });
                </script>

            <script src="assets/js/style-switcher.js"></script>


</body>
</html>
