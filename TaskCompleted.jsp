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
%>

<%
    String userName =(String)session.getAttribute("username");    
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
  <div id="breadcrumb"> <a href="index.jsp" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="#" class="tip-bottom">Project Management</a> <a href="#" class="current">View Task</a> </div>
</div>
<div class="container-fluid">
  <hr>
  <div class="row-fluid">
    <div class="span12">
     <div class="widget-box collapsible">
          <div class="widget-title">
            <h5>Project Tasks</h5>
          </div>
          <div class="widget-content nopadding">
            <table class="table table-bordered data-table">
              
				                                           
                                            <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from projecttask t, projectmanagement p where p.projectID = t.projectName AND t.status = '" + "Awaiting Evaluation" + "' GROUP BY p.projectName";
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
           
					<input type="checkbox" name="accounting" id="accounting" data-toggle="toggle"> 	&nbsp; 	 <a class="tip" href="CreateProjectTask.jsp?id=<%=resultSet.getString("p.projectID")%>" title="Add Task"><i class="icon-plus"></i></a> 
                                        
                                        
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
String sql2 ="select * from projecttask t, projectmanagement p, employees e where p.projectID = t.projectName AND e.employeeID = t.assignTo AND p.projectName = '" + name  + "' AND t.status = '" + "Awaiting Evaluation" + "'" ;
resultSet2 = statement.executeQuery(sql2);
%>
              

        
            
        <%  
int ii = 0;
while(resultSet2.next()){%>
                     
<tbody class="hide">
                <tr>
                  <td><%=resultSet2.getString("taskName")%></td>
                  
                  <%
                        if(resultSet2.getString("t.status").equalsIgnoreCase("Completed"))
                        {
                            colour = "btn btn-success btn-mini";
                        }else if(resultSet2.getString("t.status").equalsIgnoreCase("In Progress"))
                        {
                            colour = "btn btn-warning btn-mini";
                        
                        }else if(resultSet2.getString("t.status").equalsIgnoreCase("Pending"))
                        {
                            colour = "btn btn-primary btn-mini";
                        } else 
                        {
                            colour = "btn btn-danger btn-mini";
                        }
                  %>
                  
<td><a href="ProjectStatusEdit.jsp?id=<%=resultSet2.getString("task_ID")%>"><button type="button" class="<%=colour%>"><%=resultSet2.getString("t.status")%></button></a></td>
<td><%=resultSet2.getString("priority") %></td>
<td><%=resultSet2.getString("startDate") %></td>
<td><%=resultSet2.getString("finishDate") %></td>
<td><%=resultSet2.getString("employeeName") %></td>
<td><a href="TaskDocDownload.jsp?id=<%=resultSet2.getString("p.projectID")%>" title="Scope Document">View</a></td>
<td><a href="TaskProductDoc.jsp?id=<%=resultSet2.getString("t.task_ID")%>" title="Work Product Document">View</a></td>
<td><a class="tip" href="TaskEdit.jsp?id=<%=resultSet2.getString("t.task_ID")%>" title="Edit Task"><i class="icon-pencil"></i></a> <a class="tip" href="DeleteTask.jsp?id=<%=resultSet2.getString("t.task_ID")%>" title="Delete"><i class="icon-remove"></i></a> <a class="tip" href="UploadDocumentationTask.jsp?id=<%=resultSet2.getString("t.task_ID")%>" title="Upload"><i class="icon-external-link"></i></a></td>

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

<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

  

    <script  src="js/index.js"></script>
</body>
</html>
