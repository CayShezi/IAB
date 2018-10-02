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


<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!--Mobile first-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Metis</title>
    
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

         
         
         

        <!--close-left-menu-stats-sidebar-->

        <div class="bg-dark dk" id="wrap">
            
              
               <jsp:include page="TopLayer.jsp"></jsp:include>
                <!-- /#top -->
                      <jsp:include page="ProfileInclude.jsp"></jsp:include>
                
                
                <div id="content">
                    <div class="outer">
                        <div class="inner bg-light lter">
            
                            <div class="row" style="margin-left: 300px;">
                                
                               <div class="col-lg-6"> 
                                   
                                   <div class="box dark">
                                       
                                     
                                       
                                        <header>
            
            <h5>Create Employee</h5>
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
            </div>       <!-- /.toolbar -->
        </header>
                            
                                <div id="div-1" class="body">
                                <form class="form-horizontal" method="POST"  action="CreateEmployeeServlet2.do">
                                    
                                    
                                    
                                     <div class="form-group">
                                         <label for="text1" class="control-label col-lg-4">User Name </label> 
                                        <div class="col-lg-8">
                                            <input type="text"  name="username"  placeholder="" required class="form-control"> 
                                        </div>

                                    </div>
                                    
                                     <div class="form-group">
                                         <label for="pass1" class="control-label col-lg-4">Password </label> 
                                        <div class="col-lg-8">
                                            <input type="password" id="txtPassword" name="password"  placeholder="" required class="form-control"> 
                                        </div>

                                    </div>
                                    
                                 <div class="form-group">
                                         <label class="control-label col-lg-4">Confirm Password </label> 
                                        <div class="col-lg-8">
                                            <input type="password" name="passwordConfirm" id="txtConfirmPassword" placeholder="" required class="form-control"> 
                                        </div>

                                    </div>
                                    
                                    
                                   <div class="form-group">
                                         <label for="text1" class="control-label col-lg-4">First Name </label> 
                                        <div class="col-lg-8">
                                            <input type="text" name="firstName"  placeholder="" required class="form-control"> 
                                        </div>

                                    </div>
                                    
                                    
                                   <div class="form-group">
                                         <label for="text1" class="control-label col-lg-4">Last Name </label> 
                                        <div class="col-lg-8">
                                            <input type="text"  name="lastName"  placeholder="" required class="form-control">
                                        </div>

                                    </div>

                                   <div class="form-group">
                                         <label for="text1" class="control-label col-lg-4">Address </label> 
                                        <div class="col-lg-8">
                                            <textarea id="autosize" class="form-control" name="address"></textarea>
                                        </div>

                                    </div>

                                  <div class="form-group">
                                         <label for="text1" class="control-label col-lg-4">Email </label> 
                                        <div class="col-lg-8">
                                            <input type="email"  id="email2" name="email"  placeholder="" required class="form-control"> 
                                        </div>

                                    </div>

                                    <div class="form-group">
                                         <label for="text1" class="control-label col-lg-4">Mobile </label> 
                                        <div class="col-lg-8">
                                            <input type="text" id="mobile" name="mobile"  placeholder="" required class="form-control"> 
                                        </div>

                                    </div>


                                    <div class="form-group">
                                        <label class="control-label col-lg-4">Reports To </label>
                                        <div class="col-lg-8">
                                            <%
                                                try {
                                                    connection = DriverManager.getConnection(connectionUrl + database, userid, password);
                                                    statement = connection.createStatement();
                                                    String sql = "select * from employees";
                                                    resultSet = statement.executeQuery(sql);
                                            %>



                                            <select class="form-control" name="employees">
                                                <%  while (resultSet.next()) {%>
                                                <option value = "<%=resultSet.getString("employeeID")%>"><%=resultSet.getString("employeeName")%></option>
                                               
                                                <% } %>
                                            </select>


                                            <%
                                            //**Should I input the codes here?**
                                                } catch (Exception e) {
                                                    out.println("wrong entry" + e);
                                                }
                                            %>
                                        </div>
                                    </div>


                                    <a href="#" data-toggle="modal" data-target="#Privilages" style="color:red"><b><u>Set Users Privileges</u></b></a>

                                    <div class="modal fade" id="Privilages">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                        <span aria-hidden="true">&times;</span></button>
                                                    <h4 class="modal-title">SET USER PRIVILEGES</h4>
                                                </div>
                                                <div class="modal-body">

                                                    <div class="box">
                                                        <div class="box-header">
                                                        </div>
                                                        <!-- /.box-header -->
                                                        <div class="box-body no-padding">
                                                            <table class="table table-striped">
                                                                <tr>

                                                                    <th>System Functions</th>
                                                                    <th>System Features</th>
                                                                    <th>Create</th>
                                                                    <th>Read</th>
                                                                    <th>Update</th>
                                                                    <th>Delete</th>
                                                                </tr>

                                                                <tbody>

                                                                    <tr>
                                                                        <td><b>Report</b></td>
                                                                        <td></td>
                                                                        

                                                                 <td><input type="checkbox" name="reportCreate" value="Yes" /></td>
                                                                <input type="hidden" name="reportCreate" value="No" />
                                                                <td><input type="checkbox" name="reportRead" value="Yes" /></td>
                                                                <input type="hidden" name="reportRead" value="No" />
                                                                <td><input type="checkbox" name="reportUpdate" value="Yes" disabled/></td>
                                                                <td><input type="checkbox" name="reportDelete" value="Yes" disabled /></td>
                                                                </tr>

                                                                <tr>
                                                                    <td><b>Opportunity Management</b></td>
                                                                    <td></td>

                                                                    <td><input type="checkbox" name="oppCreate" value="Yes" /></td>
                                                                <input type="hidden" name="oppCreate" value="No" />
                                                                <td><input type="checkbox" name="oppRead" value="Yes" /></td>
                                                                <input type="hidden" name="oppRead" value="No" />
                                                                <td><input type="checkbox" name="oppUpdate" value="Yes" /></td>
                                                                <input type="hidden" name="oppUpdate" value="No" />
                                                                <td><input type="checkbox" name="oppDelete" value="Yes" /></td>
                                                                <input type="hidden" name="oppDelete" value="No" />
                                                                </tr>
                                                                <tr>

                                                                    <td><b>Project Management</b></td>
                                                                    <td>Report</td>
                                                                    
                                                                    
                                                                    <td><input type="checkbox" name="projectCreate" value="Yes" /></td>
                                                                <input type="hidden" name="projectCreate" value="No" />
                                                                <td><input type="checkbox" name="projectRead" value="Yes" /></td>
                                                                <input type="hidden" name="projectRead" value="No" />
                                                                <td><input type="checkbox" name="projectUpdate" value="Yes"  /></td>
                                                                <input type="hidden" name="projectUpdate" value="No" />
                                                                <td><input type="checkbox" name="projectDelete" value="Yes"  /></td>
                                                                <input type="hidden" name="projectDelete" value="No" />
                                                                </tr>

                                                                <tr>
                                                                    <td><b>Sales Management</b></td>
                                                                    <td>Report</td>

                                                                    <td><input type="checkbox" name="salesCreate" value="Yes" /></td>
                                                                <input type="hidden" name="salesCreate" value="No" />
                                                                <td><input type="checkbox" name="salesRead" value="Yes" /></td>
                                                                <input type="hidden" name="salesRead" value="No" />
                                                                <td><input type="checkbox" name="salesUpdate" value="Yes" /></td>
                                                                <input type="hidden" name="salesUpdate" value="No" />
                                                                <td><input type="checkbox" name="salesDelete" value="Yes" /></td>
                                                                <input type="hidden" name="salesDelete" value="No" />
                                                                </tr>


                                                                <tr>
                                                                    <td><b>Account Management</b></td>
                                                                    <td>Report</td>

                                                                    <td><input type="checkbox" name="accountCreate" value="Yes" /></td>
                                                                <input type="hidden" name="accountCreate" value="No" />
                                                                <td><input type="checkbox" name="accountRead" value="Yes" /></td>
                                                                <input type="hidden" name="accountRead" value="No" />
                                                                <td><input type="checkbox" name="accountUpdate" value="Yes" /></td>
                                                                <input type="hidden" name="accountUpdate" value="No" />
                                                                <td><input type="checkbox" name="accountDelete" value="Yes" /></td>
                                                                <input type="hidden" name="accountDelete" value="No" />
                                                                </tr>

                                                                <tr>
                                                                    <td><b>Profile</b></td>
                                                                    <td></td>

                                                                    <td><input type="checkbox" name="profileCreate" value="Yes" /></td>
                                                                <input type="hidden" name="profileCreate" value="No" />
                                                                <td><input type="checkbox" name="profileRead" value="Yes" /></td>
                                                                <input type="hidden" name="profileRead" value="No" />
                                                                <td><input type="checkbox" name="profileUpdate" value="Yes" /></td>
                                                                <input type="hidden" name="profileUpdate" value="No" />
                                                                <td><input type="checkbox" name="profileDelete" value="Yes" /></td>
                                                                <input type="hidden" name="profileDelete" value="No" />
                                                                </tr>



                                                                </tbody>

                                                            </table>
                                                        </div>
                                                        <!-- /.box-body -->
                                                    </div>

                                                </div>

                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-primary" data-dismiss="modal">Ok</button>
                                                </div>
                                            </div>
                                            <!-- /.modal-content -->
                                        </div>
                                        <!-- /.modal-dialog -->
                                    </div>

                                    <div class="form-actions">
                                        <button type="submit" class="btn btn-success" id="btnSubmit" onclick="validate();">Save</button>

                                    </div>
                                </form>
                                        </div>
                            
                

            </div></div></div>
                      
                      </div>
                                        </div>
                                        </div></div>

    
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

            
            
              <script>
                    $(function() {
                      Metis.formValidation();
                    });
                </script>
                
                 <script src="/assets/lib/jquery-validation/jquery.validate.js"></script>
                 
                 
                 <script type="text/javascript">
   <!--
      // Form validation code will come here.
      function validate()
      {
      
         if( document.myForm.username.value == "" )
         {
            alert( "Please provide your name!" );
            document.myForm.Name.focus() ;
            return false;
         }
         
       
       
      }
   //-->
</script>


 <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $("#btnSubmit").click(function () {
                var password = $("#txtPassword").val();
                var confirmPassword = $("#txtConfirmPassword").val();
                if (password != confirmPassword) {
                    alert("Passwords do not match.");
                    return false;
                }
                return true;
            });
        });
    </script>

            <script src="assets/js/style-switcher.js"></script>
            
            
<script type="text/javascript">
    function validate() {
        var mobile = document.getElementById("mobile").value;
        var pattern = /^\d{10}$/;
        if (pattern.test(mobile)) {
            
            return true;
        } 
            alert("Please enter a valid mobile number.input 10 digits number!");
            return false;

    }
</script>
</body>
</html>
