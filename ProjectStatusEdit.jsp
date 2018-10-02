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

<%
 
    String id = request.getParameter("id");
%>

<!DOCTYPE html>
<html lang="en">
 <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!--Mobile first-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>IAB</title>
    
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
     
        <link rel="stylesheet" href="/assets/lib/inputlimiter/jquery.inputlimiter.css">
        <link rel="stylesheet" href="/assets/lib/bootstrap-daterangepicker/daterangepicker-bs3.css">
        <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/Uniform.js/2.1.2/themes/default/css/uniform.default.min.css">
        <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/chosen/1.1.0/chosen.min.css">
        <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/jquery-tagsinput/1.3.3/jquery.tagsinput.css">
        <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/jasny-bootstrap/3.1.3/css/jasny-bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-switch/3.3.2/css/bootstrap3/bootstrap-switch.min.css">
        <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.1/css/datepicker3.min.css">
        <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-colorpicker/2.0.1/css/bootstrap-colorpicker.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/css/bootstrap-datetimepicker.min.css">



<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->

    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>


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

        
   <!--sidebar-menu-->

         
         
         

        <!--close-left-menu-stats-sidebar-->

        <div class="bg-dark dk" id="wrap">
            
              
               <jsp:include page="TopLayer.jsp"></jsp:include>
                <!-- /#top -->
                      <jsp:include page="ProfileInclude.jsp"></jsp:include>
                
                
                <div id="content">
                    <div class="outer">
                        <div class="inner bg-light lter">
            
            
                            <div class="row">
                                
                               <div class="col-lg-6"> 
                                   
                                   <div class="box dark">
                                       
                                        <header>
           
            <h5>Project Status Edit</h5>
            <!-- .toolbar -->
            <div class="toolbar">
              <nav style="padding: 8px;">
                  <a href="javascript:;" class="btn btn-default btn-xs collapse-box">
                      <i class="fa fa-minus"></i>
                  </a>
                  <a href="javascript:;" class="btn btn-default btn-xs full-box">
                      <i class="fa fa-expand"></i>
                  </a>
                  <a href="javascript:;" class="btn btn-danger btn-xs close-box">
                      <i class="fa fa-times"></i>
                  </a>
              </nav>
            </div>            <!-- /.toolbar -->
        </header>
                            
                                <div id="div-1" class="body">
                                     
            <form method="POST" class="form-horizontal" action="UpdatePS.jsp">
                
            <table class="table table-bordered data-table">
				                                           
                                            <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from projecttask where task_ID = '" + id + "'";
resultSet = statement.executeQuery(sql);

int i=0;
while(resultSet.next()){
%>

              </thead>
              <tbody>
                <tr class="gradeX">
                    
                    
                  
                    
                        <input type="hidden" name="task_ID" value="<%=resultSet.getString("task_ID")%>">
                        
             
              
                    
                    <div class="form-group">
                     <label for="text1" class="control-label col-lg-4">Project Name :</label>
                    <div class="col-lg-8">
                        <input type="text" class="form-control" name="projectName" value="<%=resultSet.getString("taskName")%>">
                        </div>
                    </div>

                        <div class="form-group">
              <label for="text1" class="control-label col-lg-4">Status :</label>
              <div class="col-lg-8">
                  <select class="form-control chzn-select" name="status">
                  <option>In Progress</option>
                  <option>Completed</option>
                  <option>Pending</option>
                   <option>Expired</option>
                </select>
              </div>
            </div>
                    
                   
                       
                     
                        
                        

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
               <div class="form-actions no-margin-bottom">
                        <input type="submit" value="Submit" class="btn btn-primary">
                        <input type="button" value="Back" class="btn btn-danger" onCLick="history.back()">
                    </div>
              
              </form>
          </div>
        </div>
    </div>
  </div>
 
</div>
        </div>

    </div></div>
<!--Footer-part-->
 <jsp:include page="Footer.jsp"></jsp:include>
<!--end-Footer-part--> 
<script src="assets/lib/jquery/jquery.js"></script>


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


            <script src="assets/js/style-switcher.js"></script>
</body>
</html>
