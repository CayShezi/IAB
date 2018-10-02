<%-- 
    Document   : ProjectManagement
    Created on : Apr 11, 2018, 3:14:02 PM
    Author     : shezi
--%>

<%@page import="java.sql.PreparedStatement"%>
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
String status = "";
%>


<%
     String username = (String)session.getAttribute("username");
%>

<%
        String reportCreate = "";
        String reportRead = "";

        String oppCreate = "";
        String oppRead = "";
        String oppUpdate = "";
        String oppDelete = "";

        String projectCreate = "";
        String projectRead = "";
        String projectUpdate = "";
        String projectDelete = "";

        String salesCreate = "";
        String salesRead = "";
        String salesUpdate = "";
        String salesDelete = "";

        String accountCreate = "";
        String accountRead = "";
        String accountUpdate = "";
        String accountDelete = "";

        String profileCreate = "";
        String profileRead = "";
        String profileUpdate = "";
        String profileDelete = "";

        String reportCreateLink = "";
        String reportReadLink = "";

        String oppCreateLink = "";
        String oppReadLink = "";
        String oppUpdateLink = "";
        String oppDeleteLink = "";

        String projectCreateLink = "";
        String projectReadLink = "";
        String projectUpdateLink = "";
        String projectDeleteLink = "";

        String salesCreateLink = "";
        String salesReadLink = "";
        String salesUpdateLink = "";
        String salesDeleteLink = "";

        String accountCreateLink = "";
        String accountReadLink = "";
        String accountUpdateLink = "";
        String accountDeleteLink = "";

        String profileCreateLink = "";
        String profileReadLink = "";
        String profileUpdateLink = "";
        String profileDeleteLink = "";
        String role = "";
        String role2 = "";
        
        


    %>  



    <%                                                try {
            connection = DriverManager.getConnection(connectionUrl + database, userid, password);
            statement = connection.createStatement();
            String sql = "select * from employees where username = '" + username + "'";
            resultSet = statement.executeQuery(sql);

            int i = 0;
            while (resultSet.next()) {
    %>


    <%
        reportCreate = resultSet.getString("reportcreate");
        reportRead = resultSet.getString("reportview");
        oppCreate = resultSet.getString("oppCreate");
        oppRead = resultSet.getString("oppRead");
        oppUpdate = resultSet.getString("oppUpdate");
        oppDelete = resultSet.getString("oppDelete");
        projectCreate = resultSet.getString("projectCreate");
        projectRead = resultSet.getString("projectRead");
        projectUpdate = resultSet.getString("projectUpdate");
        projectDelete = resultSet.getString("projectDelete");
        salesCreate = resultSet.getString("salesCreate");
        salesRead = resultSet.getString("salesRead");
        salesUpdate = resultSet.getString("salesUpdate");
        salesDelete = resultSet.getString("salesDelete");

        accountCreate = resultSet.getString("accountCreate");
        accountRead = resultSet.getString("accountRead");
        accountUpdate = resultSet.getString("accountUpdate");
        accountDelete = resultSet.getString("accountDelete");

        profileCreate = resultSet.getString("profileCreate");
        profileRead = resultSet.getString("profileRead");
        profileUpdate = resultSet.getString("profileUpdate");
        profileDelete = resultSet.getString("profileDelete");
        role = resultSet.getString("role");

        if (reportCreate.equalsIgnoreCase("No")) {
            reportCreateLink = "hide";

        } else if (reportCreate.equalsIgnoreCase("Yes")) {

            reportCreateLink = "";
        }

        if (reportRead.equalsIgnoreCase("No")) {

            reportReadLink = "hide";
        } else if (reportRead.equalsIgnoreCase("Yes")) {

            reportReadLink = "";
        }
        if (oppCreate.equalsIgnoreCase("No")) {
            oppCreateLink = "hide";

        } else if (oppCreate.equalsIgnoreCase("Yes")) {

            oppCreateLink = "";
        }

        if (oppRead.equalsIgnoreCase("No")) {

            oppReadLink = "hide";
        } else if (oppRead.equalsIgnoreCase("Yes")) {

            oppReadLink = "";
        }
        if (oppUpdate.equalsIgnoreCase("Yes")) {

            oppUpdateLink = "";
        } else if (oppUpdate.equalsIgnoreCase("No")) {

            oppUpdateLink = "hide";
        }
        if (oppDelete.equalsIgnoreCase("No")) {

            oppDeleteLink = "hide";
        } else if (oppDelete.equalsIgnoreCase("Yes")) {

            oppDeleteLink = "";
        }
        if (projectCreate.equalsIgnoreCase("No")) {

            projectCreateLink = "hide";

        } else if (projectCreate.equalsIgnoreCase("Yes")) {

            projectCreateLink = "";
        }
        if (projectRead.equalsIgnoreCase("No")) {

            projectReadLink = "hide";

        } else if (projectRead.equalsIgnoreCase("Yes")) {

            projectReadLink = "";
        }
        if (projectUpdate.equalsIgnoreCase("No")) {

            projectUpdateLink = "hide";

        } else if (projectUpdate.equalsIgnoreCase("Yes")) {

            projectUpdateLink = "";
        }
        if (projectDelete.equalsIgnoreCase("No")) {

            projectDeleteLink = "hide";

        } else if (projectDelete.equalsIgnoreCase("Yes")) {

            projectDeleteLink = "";
        }
        if (salesCreate.equalsIgnoreCase("Yes")) {

            salesCreateLink = "";
        } else if (salesCreate.equalsIgnoreCase("No")) {

            salesCreateLink = "hide";
        }
        if (salesRead.equalsIgnoreCase("Yes")) {

            salesReadLink = "";
        } else if (salesRead.equalsIgnoreCase("No")) {

            salesReadLink = "hide";
        }
        if (salesUpdate.equalsIgnoreCase("Yes")) {

            salesUpdateLink = "";
        } else if (salesUpdate.equalsIgnoreCase("No")) {

            salesUpdateLink = "hide";
        }
        if (salesDelete.equalsIgnoreCase("Yes")) {

            salesDeleteLink = "";
        } else if (salesDelete.equalsIgnoreCase("No")) {

            salesDeleteLink = "hide";
        }
        if (accountDelete.equalsIgnoreCase("Yes")) {

            accountDeleteLink = "";
        } else if (accountDelete.equalsIgnoreCase("No")) {

            accountDeleteLink = "hide";
        }
        if (accountCreate.equalsIgnoreCase("Yes")) {

            accountCreateLink = "";
        } else if (accountCreate.equalsIgnoreCase("No")) {

            accountCreateLink = "hide";
        }
        if (accountRead.equalsIgnoreCase("Yes")) {

            accountReadLink = "";
        } else if (accountRead.equalsIgnoreCase("No")) {

            accountReadLink = "hide";
        }
        if (accountUpdate.equalsIgnoreCase("Yes")) {

            accountUpdateLink = "";
        } else if (accountUpdate.equalsIgnoreCase("No")) {

            accountUpdateLink = "hide";
        }
        if (profileCreate.equalsIgnoreCase("No")) {
            profileCreateLink = "hide";
        } else if (profileCreate.equalsIgnoreCase("Yes")) {
            profileCreateLink = "";

        }
        if (profileRead.equalsIgnoreCase("No")) {
            profileReadLink = "hide";
        } else if (profileRead.equalsIgnoreCase("Yes")) {
            profileReadLink = "";

        }
        if (profileUpdate.equalsIgnoreCase("No")) {
            profileUpdateLink = "hide";
        } else if (profileUpdate.equalsIgnoreCase("Yes")) {
            profileUpdateLink = "";

        }
        if (profileDelete.equalsIgnoreCase("No")) {
            profileDeleteLink = "hide";
        } else if (profileDelete.equalsIgnoreCase("Yes")) {
            profileDeleteLink = "";

        } if(role.equalsIgnoreCase("employee"))
        {
        
            role2 = "hide";
            
        }else
        {
        
             role2 = " ";
            
        }



    %>



    <%            i++;
            }
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
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


        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/datatables/1.10.12/css/dataTables.bootstrap.min.css">

         <link rel='stylesheet prefetch' href='https://use.fontawesome.com/releases/v5.0.8/css/all.css'>
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
      
      <ul style="float:right">
          <a href="currentProject.jsp" title="Grid View"><i class="glyphicon glyphicon-th-list" style="font-size: 20px;color: #ffffff"></i></a>&nbsp;
        <a href="ProjectTileTest2.jsp" title="Card View"><i class="glyphicon glyphicon-th" style="font-size: 20px;color: #ffffff"></i></a>
  
     </ul>
                
                <div class="inner bg-light lter">
                            <!--Begin Datatables-->
<div class="row">
  <div class="col-lg-12">
        <div class="box">
            
            
            
            
                    
                                           <div id="exTab1">	
                <ul  class="nav nav-pills">
			<li class="active"><a href="currentProject.jsp">Current Projects</a></li>
                <li><a href="SubmiteedProject.jsp">Submitted Projects</a></li>
                <li><a href="ViewProject.jsp">Pending Projects</a></li>
                <li><a href="ViewDeferredProjects.jsp">Deferred Projects</a></li>
			
</ul>
  </div>
            
            
            <header>
              
                <h5>Current Projects</h5>
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
                  <th class="<%=salesCreateLink%> <%=role2%>">Status Description</th>
                  <th>View Document</th>
                  <th>Task Completion</th>
                    
				
                </tr>
				                                           
                                            <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from projectmanagement p, employees e where status = '" + "In Progress" + "' AND p.projectManager = e.employeeID";
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


<%
       if(pecentage == 100)
       { 
        status = "Completed";
       }else
       {
         status = resultSet.getString("status");
       }

%>

<td class="<%=salesCreateLink%> <%=role2%>"><a class="<%=salesCreateLink%> <%=role2%>" href="ProjectSubmittedEdit.jsp?id=<%=resultSet.getString("projectID")%>"><%=status%></a></td>
<td><a href="ViewOrders.jsp?id=<%=resultSet.getString("oppID")%>">Download Document!!</a></td>
<td>
    <%=pecentage%>%
</td>

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
        </div></div></div>

   

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
            
            <!-- Placed at the end of the document so the pages load faster -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

</body>
</html>
