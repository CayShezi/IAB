<%-- 
    Document   : ProjectManagement
    Created on : Apr 11, 2018, 3:14:02 PM
    Author     : shezi
--%>


<%@page import="za.ac.kbcs.model.User"%>
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
   String username = (String)session.getAttribute("username");
    
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

 <link rel='stylesheet prefetch' href='https://use.fontawesome.com/releases/v5.0.8/css/all.css'>

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

<div class="bg-dark dk" id="wrap">
            
              
               <jsp:include page="TopLayer.jsp"></jsp:include>
                <!-- /#top -->
                      <jsp:include page="ProfileInclude.jsp"></jsp:include>
        <!--close-left-menu-stats-sidebar-->

                         <div id="content">
                    <div class="outer">
                        <div class="inner bg-light lter">
            
            
                            <div class="row">
                                
                               <div class="col-lg-6"> 
                                   
                                   <div class="box dark">
                                       
                                        <header>
            
            <h5>Edit Profile</h5>
            <!-- .toolbar -->
            <div class="toolbar">
              <nav style="padding: 8px;">
                  <a href="javascript:;" class="btn btn-default btn-xs collapse-box">
                      <i class="glyphicon glyphicon-minus"></i>
                  </a>
                  <a href="javascript:;" class="btn btn-default btn-xs full-box">
                      <i class="glyphicon glyphicon-resize-small"></i>
                  </a>
                      <a onCLick="history.back()" class="btn btn-danger btn-xs close-box">
                      <i class="glyphicon glyphicon-remove"></i>
                  </a>
              </nav>
            </div>              <!-- /.toolbar -->
        </header>
                            
                                <div id="div-1" class="body">
                                    
                                    
              
            <form method="POST" class="form-horizontal" action="UpdatePP.jsp">
                
 
				                                           
                                            <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from registration where userName = '" + username + "'";
resultSet = statement.executeQuery(sql);

int i=0;
while(resultSet.next()){
%>

             
              
                    
                    
                  
                    
                        
                    <div class="form-group">
                                        <label for="text1" class="control-label col-lg-4">Company Name </label>
                                        <div class="col-lg-8">
                                            <input type="text" name="companyName" class="form-control"  value="<%=resultSet.getString("companyName")%>" />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="text1" class="control-label col-lg-4">Trading Name </label>
                                        <div class="col-lg-8">
                                            <input type="text" name="tradingName" class="form-control"  value="<%=resultSet.getString("tradingName")%>" />
                                        </div>
                                    </div>


                                    <div class="form-group">
                                        <label for="text1" class="control-label col-lg-4">Email Address </label>
                                        <div class="col-lg-8">
                                            <input type="text" name="emailAddress" class="form-control"  value="<%=resultSet.getString("emailAddress")%>" />
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label for="text1" class="control-label col-lg-4">User Name </label>
                                        <div class="col-lg-8">
                                            <input type="text" name="userName" class="form-control"  value="<%=resultSet.getString("userName")%>" />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="text1" class="control-label col-lg-4">Password </label>
                                        <div class="col-lg-8">
                                            <input type="password" name="password" class="form-control"  value="<%=resultSet.getString("password")%>"  />
                                        </div>
                                    </div>

                                  
                                <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
                                    <h5>Owner Profile</h5>
                                </div>
                               
                                   
                                        <div class="form-group">
                                            <label for="text1" class="control-label col-lg-4">First Name </label>
                                            <div class="col-lg-8">
                                                <input type="text" name="firstName" class="form-control"  value="<%=resultSet.getString("firstName")%>" />
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="text1" class="control-label col-lg-4">Last Name </label>
                                            <div class="col-lg-8">
                                                <input type="text" name="lastName" class="form-control"  value="<%=resultSet.getString("lastName")%>"/>
                                            </div>
                                        </div>


                                        <div class="form-group">
                                            <label for="text1" class="control-label col-lg-4">Job Designation </label>
                                            <div class="col-lg-8">
                                                <input type="text" name="jobDesignation" class="form-control"  value="<%=resultSet.getString("jobDesignation")%>"/>
                                            </div>
                                        </div>
                                    
                              
        
                                <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
                                    <h5>Company Profile</h5>
                                </div>
                              
                                   

                                        <div class="form-group">
                                            <label for="text1" class="control-label col-lg-4">Company Description </label>
                                            <div class="col-lg-8">
                                                <textarea class="form-control" name="companyDescription"><%=resultSet.getString("companyDescription")%></textarea>
                                            </div>
                                        </div>
              
              
                                        <div class="form-group">
                                            <label for="text1" class="control-label col-lg-4">Telephone Number </label>
                                            <div class="col-lg-8">
                                                <input type="text" name="companyTelephone" id="mask-phone" class="form-control"  value="<%=resultSet.getString("companyTelephone")%>">

                                            </div>



                                        </div>
                                        <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
                                            <h5>Company Address</h5>
                                        </div> 

                                        <div class="form-group">
                                            <label for="text1" class="control-label col-lg-4">Street Name and Number </label>
                                            <div class="col-lg-8">
                                                <input type="text" name="streetName" class="form-control"  value="<%=resultSet.getString("streetName")%>"/>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label for="text1" class="control-label col-lg-4">Suburb </label>
                                            <div class="col-lg-8">
                                                <input type="text" name="suburb" class="form-control"  value="<%=resultSet.getString("suburb")%>" />
                                            </div>
                                        </div>


                                        <div class="form-group">
                                            <label for="text1" class="control-label col-lg-4">City </label>
                                            <div class="col-lg-8">
                                                <input type="text" name="city" class="form-control"  value="<%=resultSet.getString("city")%>" />
                                            </div>
                                        </div>



                                        <div class="form-group">
                                            <label for="text1" class="control-label col-lg-4">Postal Code </label>
                                            <div class="col-lg-8">
                                                <input type="text" name="postalCode" class="form-control"  value="<%=resultSet.getString("postalCode")%>" />
                                            </div>
                                        </div>



                                        <div class="form-group">
                                            <label for="text1" class="control-label col-lg-4">Province</label>
                                            <div class="col-lg-8">
                                                <select name="province" class="form-control chzn-select" multiple tabindex="4" >

                                                    <option value="Gauteng">Gauteng</option>
                                                    <option value="Kwazulu Natal">Kwazulu Natal</option>
                                                    <option value="North West">North West</option>
                                                    <option value="Eastern Cape">Eastern Cape</option>
                                                    <option value="Western Cape">Western Cape</option>
                                                    <option value="Mpumalanga">Mpumalanga</option>
                                                    <option value="Free State">Free State</option>
                                                    <option value="Limpopo">Limpopo</option>
                                                    <option value="Northen Cape">Northen Cape</option>
                                                </select>
                                            </div>
                                        </div>

                        
<div class="form-actions no-margin-bottom">
                        <input type="submit" value="Update" class="btn btn-primary">
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
