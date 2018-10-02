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
                <div class="icons"><i class="fa fa-table"></i></div>
                <h5>Dynamic Table</h5>
            </header>
            <div id="collapse4" class="body">
                
     <div class="row-fluid">
                    <div class="span12">
                        <div class="widget-box">
                            <form action="Link" method="POST">
                                <!--for demo wrap-->
                                
                                <div class="tbl-header">

                                    
                                        <table id="dataTable" class="table table-bordered table-condensed table-hover table-striped">
                                        <thead>
                                            <tr>
                                                
                                                <th>Description</th>
                                                <th>Date Created</th>
                                                <th>Action</th>
                                                 <th>Priority</th>
                                                  
                                                
                                                
                                            </tr>
                                            
                                            <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();

String sql ="select * from recordv1 where score IS NOT NULL ORDER BY score DESC";

resultSet = statement.executeQuery(sql);

int i=0;
while(resultSet.next()){
%>
                                        </thead>
                                        <tbody>
                                            
                                       <tr>
<td><%=resultSet.getString("description") %></td>
<td><%=resultSet.getString("date") %></td>
<td><a href="deleteDash2.jsp?id=<%=resultSet.getString("i_d")%>"><button type="button" class="delete">Delete</button></a></td>
<td><%=resultSet.getString("score") %></td>
 

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

                <div class="form-actions no-margin-bottom">
                        <input type="submit" value="Qualify" class="btn btn-primary">
                        <input type="button" value="Back" class="btn btn-danger" onCLick="history.back()">
                    </div>
                                        </form>


      </div>
                                        
                         
  </div>
 


</div>
       
    </div>
</div></div></div></div></div></div></div>
     

<!--end-main-container-part-->

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

