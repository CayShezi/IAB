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
    
    
    
    <body>
        
        
        <div class="bg-dark dk" id="wrap">
            
              
               <jsp:include page="TopLayer.jsp"></jsp:include>
                <!-- /#top -->
                      <jsp:include page="ProfileInclude.jsp"></jsp:include>
        <!--close-left-menu-stats-sidebar-->
        
        <div id="content">

    <div class="outer">
        
    
                <div class="inner bg-light lter">
                            <!--Begin Datatables-->
<div class="row">
  <div class="col-lg-12">
        <div class="box">
            
            
                                                  <div id="exTab1">	
                <ul  class="nav nav-pills">
			 <li><a href="currentProject.jsp">Current Projects</a></li>
                <li><a href="SubmiteedProject.jsp">Submitted Projects</a></li>
                <li class="active"><a href="ViewProject.jsp">Pending Projects</a></li>
                <li><a href="ViewDeferredProjects.jsp">Deferred Projects</a></li>
			
</ul>
  </div>
            <header>
                
                <h5>Pending Projects</h5>
            </header>
            <div id="collapse4" class="body">
                
  
           <table id="dataTable" class="table table-bordered table-condensed table-hover table-striped">
              <thead>
                <tr>
                  <th>Project Name</th>
                  <th>Project Description</th>
                  <th>Priority</th>
                  <th>Start Date</th>
                   <th>Due Date</th>
                   <th>Project Manager</th>
                    <th>Action</th>
                     
                    
				
                </tr>
				                                           
                                            <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from projectmanagement p, employees e where status = '" + "Not Started" + "' AND e.employeeID = p.projectManager";
resultSet = statement.executeQuery(sql);

int i=0;
while(resultSet.next()){
%>
   

              </thead>
              <tbody>
                <tr class="gradeX">
                  <td><%=resultSet.getString("projectName")%></td>
<td><%=resultSet.getString("projectDescription")%></td>
<td><%=resultSet.getString("priorityLevel")%></td>
<td><%=resultSet.getString("startDate")%></td>
<td><%=resultSet.getString("dueDate")%></td>
<td><%=resultSet.getString("employeeName")%></td>
<td><a href="CreateTask.jsp?id=<%=resultSet.getString("projectID")%>"><button type="button" class="btn btn-danger btn-xs">Start Project</button></a></td>

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
        </div>
    </div>
  </div>
              
                                   <ul style="float:right">
                           <a href="CreateProject2.jsp" title="Create Project"><i class="glyphicon glyphicon-plus" style="font-size: 30px"></i></a>
         
  
     </ul>
 
</div>
        </div>

    </div></div>
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
