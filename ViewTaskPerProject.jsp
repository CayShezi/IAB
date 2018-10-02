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
ResultSet resultSet2 = null;

String colour = "";

String projectID = request.getParameter("id");
%>

<%
    String username =(String)session.getAttribute("username");    
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
        String  dashboardLink = "index.jsp";
        String role = "";
        String userProjectTask = "";
        String projectTaskID = "select * from projecttask t, projectmanagement p where p.projectID = t.projectName AND projectID = '" + projectID + "' GROUP BY p.projectName";
        


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
        userProjectTask = resultSet.getString("employeeID");

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

        }
        
        if(role.equalsIgnoreCase("employee"))
        {
        
            dashboardLink = "indexEmp.jsp";
            
        }
        
         if(role.equalsIgnoreCase("employee"))
        {
        
            projectTaskID = "select * from projecttask t, projectmanagement p where p.projectID = t.projectName AND t.assignTo = '" + userProjectTask + "' GROUP BY p.projectName";
            
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
            <header>
              
                <h5>Project Tasks</h5>
            </header>
            <div id="collapse4" class="body">
                
          
<div class="row-fluid">
                    <div class="span12">
                        <div class="widget-box">
                            <section>
                                <!--for demo wrap-->
                                
                                <div class="tbl-header">

                                    
                                        <table id="dataTable" class="table table-bordered table-condensed table-hover table-striped">
        
              
				                                           
                                            <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql = projectTaskID;
resultSet = statement.executeQuery(sql);
int i=0;
String name = "";
while(resultSet.next()){
%>
     
<thead>
                <tr>
                  <th>Task Name</th>
                  <th>Status</th>
                  <th>Priority</th>
                   <th>Start Date</th>
                    <th>End Date</th>
                   <th>Assigned To</th>
                    <th>Scope</th>
                   <th>Work Product</th>
                    <th>Action</th>	
                </tr>
                
                 </thead>
                 
                 
               <tbody class="labels">
			<tr>
                            
				<td colspan="8">
					<label for="accounting"><%=resultSet.getString("p.projectName")%></label>
           
					<input type="checkbox" name="accounting" id="accounting" data-toggle="toggle"> 	&nbsp; 	 <a class="tip" href="CreateProjectTask.jsp?id=<%=resultSet.getString("p.projectID")%>" title="Add Task"><i class="glyphicon glyphicon-plus"></i></a> 
                                        
                                        
				</td>
                                
                                <%
                                    name = resultSet.getString("p.projectName");
                                %>

			</tr>
		</tbody>
     <%
     
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql2 ="select * from projecttask t, projectmanagement p, employees e where p.projectID = t.projectName AND e.employeeID = t.assignTo AND p.projectName = '" + name + "'";
resultSet2 = statement.executeQuery(sql2);
%>
              

        
            
        <%  
int ii = 0;
while(resultSet2.next()){%>
                     
<tbody>
                <tr>
                  <td><%=resultSet2.getString("taskName")%></td>
                  
                  <%
                        if(resultSet2.getString("t.status").equalsIgnoreCase("Completed"))
                        {
                            colour = "btn btn-success btn-xs";
                        }else if(resultSet2.getString("t.status").equalsIgnoreCase("In Progress"))
                        {
                            colour = "btn btn-warning btn-xs";
                        
                        }else if(resultSet2.getString("t.status").equalsIgnoreCase("Pending"))
                        {
                            colour = "btn btn-primary btn-xs";
                        } else 
                        {
                            colour = "btn btn-danger btn-xs";
                        }
                  %>
                  
<td><a href="ProjectStatusEdit.jsp?id=<%=resultSet2.getString("task_ID")%>"><button type="button" class="<%=colour%>"><%=resultSet2.getString("t.status")%></button></a></td>
<td><%=resultSet2.getString("priority") %></td>
<td><%=resultSet2.getString("startDate") %></td>
<td><%=resultSet2.getString("finishDate") %></td>
<td><%=resultSet2.getString("employeeName") %></td>
<td><a href="TaskDocDownload.jsp?id=<%=resultSet2.getString("p.projectID")%>" title="Scope Document">View</a></td>
<td><a href="TaskProductDoc.jsp?id=<%=resultSet2.getString("t.task_ID")%>" title="Work Product Document">View</a></td>
<td><a class="tip" href="TaskEdit.jsp?id=<%=resultSet2.getString("t.task_ID")%>" title="Edit Task"><i class="glyphicon glyphicon-pencil"></i></a> <a class="tip" href="DeleteTask.jsp?id=<%=resultSet2.getString("t.task_ID")%>" title="Delete"><i class="glyphicon glyphicon-remove"></i></a> <a class="tip" href="UploadDocumentationTask.jsp?id=<%=resultSet2.getString("t.task_ID")%>" title="Upload"><i class="glyphicon glyphicon-import "></i></a></td>

</tr>


      
              
        <%
        
        ii++;
} %>
       
            
<%

//**Should I input the codes here?**
        }
        catch (Exception e) {
e.printStackTrace();
}
%>
  

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
 
</div>
        </div>

    </div></div></div></div></div>
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
